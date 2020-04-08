# $NetBSD$

DISTNAME=	AFLplusplus-2.62c
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=AFLplusplus/}
GITHUB_TAG=     ${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/AFLplusplus/AFLplusplus/
COMMENT=	American Fuzzy Lop++, a fuzzing tool for finding bugs by random input
LICENSE=	apache-2.0

USE_LANGUAGES=	c c++
USE_TOOLS+=	bash:run gmake
REPLACE_SH+=	afl-plot
REPLACE_BASH+=	afl-cmin

.include "../../mk/bsd.pkg.mk"
