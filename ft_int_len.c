/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_int_len.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: mramadan <mramadan@student.codam.nl>         +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/12/05 14:26:02 by mramadan      #+#    #+#                 */
/*   Updated: 2020/04/23 18:18:45 by Marty         ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

int		ft_int_len(int n)
{
	int len;

	len = 0;
	if (n < 0)
	{
		len++;
		n *= -1;
	}
	if (n == 0)
		len++;
	while (n > 0)
	{
		len++;
		n = n / 10;
	}
	return (len);
}