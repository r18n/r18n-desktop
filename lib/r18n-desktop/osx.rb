# frozen_string_literal: true

# Copyright (C) 2008 Andrey “A.I.” Sitnik <andrey@sitnik.ru>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

module R18n
  # I18n support for Mac OS X.
  class I18n
    def self.system_locale
      command =
        'defaults read .GlobalPreferences AppleLanguages | ' \
          'tr -d [:space:] | cut -c2-3'
      `#{command}`.chop
    end
  end
end
