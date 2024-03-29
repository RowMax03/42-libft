/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mreidenb <mreidenb@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/10 09:09:00 by mreidenb          #+#    #+#             */
/*   Updated: 2023/08/02 03:11:14 by mreidenb         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>
#include "libft.h"

void	*ft_memccpy(void *dst, void *src, int c, size_t n)
{
	void	*ptr;

	ptr = ft_memchr(src, c, n);
	if (ptr)
		return (ft_memcpy(dst, src, ptr - src + 1));
	ft_memcpy(dst, src, n);
	return (0);
}
