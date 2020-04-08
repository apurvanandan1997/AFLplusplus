# $NetBSD$

GITHUB_PROJECT=	AFLplusplus
GITHUB_TAG=     2.62c
DISTNAME=       2.62c
PKGNAME=        ${GITHUB_PROJECT}-${DISTNAME}
CATEGORIES=     wip
MASTER_SITES=   ${MASTER_SITE_GITHUB:=AFLplusplus/}
DIST_SUBDIR=    ${GITHUB_PROJECT}

MAINTAINER=     pkgsrc-users@NetBSD.org
HOMEPAGE=       https://github.com/AFLplusplus/AFLplusplus/
COMMENT=        American Fuzzy Lop Plus Plus, a fuzzing tool for finding bugs by random input
LICENSE=        apache-2.0

WRKSRC=	        ${WRKDIR}/${GITHUB_PROJECT}-${DISTNAME}
USE_LANGUAGES=  c c++
USE_TOOLS+=     bash:run gmake
REPLACE_SH+=    afl-plot
REPLACE_BASH+=  afl-cmin

.include "../../mk/bsd.pkg.mk"
