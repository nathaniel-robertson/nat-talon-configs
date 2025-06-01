from talon import Module, actions, cron

# From Pokey
# https://github.com/myersm0/talon-personal/blob/master/core/key_hold.py
# adapted from https://github.com/AndreasArvidsson/andreas-talon

mod = Module()
repeated_key_jobs = {}
repeated_key_counts = {}

@mod.action_class
class Actions:
    def key_hold(key: str, max_presses: int = 256, repeat_rate: str = "16ms", repeat_delay: str = "256ms"):
        """
        Simulate holding a key by automatically repeating key presses up to a specified maximum.
        """
        if key in repeated_key_jobs:
            return
        repeated_key_counts[key] = 1
        actions.key(key)

        def repeated_press():
            repeated_key_counts[key] += 1
            actions.key(key)
            if repeated_key_counts[key] >= max_presses:
                actions.user.key_release(key)

        def add_interval():
            repeated_key_jobs[key] = cron.interval(repeat_rate, repeated_press)

        repeated_key_jobs[key] = cron.after(repeat_delay, add_interval)

    def key_release(key: str):
        """
        Stop repeating presses for the specified key.
        """
        if key in repeated_key_jobs:
            job = repeated_key_jobs.pop(key, None)
            if job is not None:
                cron.cancel(job)
        if key in repeated_key_counts:
            repeated_key_counts.pop(key)

    def release_all_keys():
        """
        Stop repeating presses for all keys currently being repeated.
        """
        for k in list(repeated_key_jobs.keys()):
            actions.user.key_release(k)



