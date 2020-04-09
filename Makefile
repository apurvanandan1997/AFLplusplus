# $NetBSD$

DISTNAME=	AFLplusplus-2.62c
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GITHUB:=AFLplusplus/}
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/AFLplusplus/AFLplusplus/
COMMENT=	American Fuzzy Lop++, a fuzzing tool for finding bugs by random input
LICENSE=	apache-2.0

.include "../../lang/python/pyversion.mk"

PYTHON_INCLUDE_CMD=	python${PYVERSSUFFIX}-config --includes
PYTHON_VERSION_CMD=	python${PYVERSSUFFIX} --version
PYTHON_VER_SH_OUT=	${PYTHON_VERSION_CMD:sh}
PYTHON_LIB_CMD=		python${PYVERSSUFFIX}-config --ldflags

BUILD_MAKE_FLAGS+=	PYTHON_INCLUDE="${PYTHON_INCLUDE_CMD:sh}"
BUILD_MAKE_FLAGS+=	PYTHON_VERSION="${PYTHON_VER_SH_OUT:NPython}"
BUILD_MAKE_FLAGS+=	PYTHON_LIB="${PYTHON_LIB_CMD:sh}"

USE_LANGUAGES=	c c++
USE_TOOLS+=	bash:run gmake
REPLACE_SH+=	afl-plot
REPLACE_BASH+=	afl-cmin

.include "../../mk/bsd.pkg.mk"
