# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    r_dwssap.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: asun <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/07/12 17:44:02 by asun              #+#    #+#              #
#    Updated: 2016/07/13 17:00:23 by asun             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

cat /etc/passwd | grep -v '#' | awk 'NR%2==0' | sed 's/:\*:.*//' | rev | sort -r | sed -n "$FT_LINE1,$FT_LINE2 p" | sed 's/$/, /' | tr -d '\n' | sed 's/, $/./' | tr -d "\n"