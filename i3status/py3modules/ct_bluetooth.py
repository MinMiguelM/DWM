import subprocess

class Py3status:

    label = 'BLUETOOTH'
    color = ''
    
    def ct_bluetooth(self):
        value = 'None'
        self.color = '#00FF00'
        try:
            bluetooth = subprocess.Popen(["bluetooth"], stdout=subprocess.PIPE)
            awk = subprocess.Popen(["awk", "{printf \"%s\", $3}"], stdin=bluetooth.stdout, stdout=subprocess.PIPE)
            bluetooth.stdout.close()
            value, _unused = awk.communicate()
            value = value.decode('utf-8')
            if value == 'off':
                self.color = '#FFFF00'
        except:
            self.color = '#FF0000'

        return {
            'full_text': '{}: {}'.format(self.label, value),
            'cached_until': self.py3.CACHE_FOREVER,
            'color': self.color,
            'cached_until': self.py3.time_in(sync_to=1)
        }
