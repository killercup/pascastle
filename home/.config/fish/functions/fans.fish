function fans --description "contoll fan and power settings" --argument mode
    switch $mode
        case boinc
            # disable turbo boost -- way lower CPU power usage
            sudo bash -c 'echo 0 > /sys/devices/system/cpu/cpufreq/boost'
            # manual GPU fan control -- run at constant speed for nicer noise profile
            sudo bash -c 'echo 1 > /sys/class/drm/card0/device/hwmon/hwmon6/pwm1_enable'
            # set GPU fan to around 1500rpm, not too loud, but effective
            sudo bash -c 'echo 80 > /sys/class/drm/card0/device/hwmon/hwmon6/pwm1'
            echo "switched to 'boinc' fan mode"
        case fullpower
            # turbo boost!
            sudo bash -c 'echo 1 > /sys/devices/system/cpu/cpufreq/boost'
            # manual GPU fan control -- run at constant speed for nicer noise profile
            sudo bash -c 'echo 1 > /sys/class/drm/card0/device/hwmon/hwmon6/pwm1_enable'
            # set GPU fan to around 2000rpm, cause why not
            sudo bash -c 'echo 80 > /sys/class/drm/card0/device/hwmon/hwmon6/pwm1'
            echo "switched to full power mode"
        case '*'
            # turbo boost
            sudo bash -c 'echo 1 > /sys/devices/system/cpu/cpufreq/boost'
            # automatic GPU fan control -- will probably be 0rpm most of the time
            sudo bash -c 'echo 2 > /sys/class/drm/card0/device/hwmon/hwmon6/pwm1_enable'
            echo "switched to default fan mode"
    end
end
