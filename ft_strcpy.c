/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_strcpy.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: mramadan <mramadan@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/10/29 13:46:37 by mramadan      #+#    #+#                 */
/*   Updated: 2020/04/23 18:20:26 by Marty         ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strcpy(char *dst, const char *src)
{
	size_t	i;
	size_t	len;

	i = 0;
	if (!src)
		return (0);
	len = ft_strlen(src);
	while (src[i] != '\0')
	{
		dst[i] = src[i];
		i++;
	}
	if (dst[i] != '\0')
		dst[i] = '\0';
	return (len);
}
