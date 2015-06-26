#
# Copyright VMware, Inc 2015
#

MKDIR=/bin/mkdir
RM=/bin/rm
RMDIR=/bin/rm -rf
CP=/bin/cp
MV=/bin/mv
TAR=/bin/tar
RPMBUILD=/usr/bin/rpmbuild
SED=/usr/bin/sed
SHASUM=/usr/bin/shasum
PACKER=/usr/local/bin/packer
VAGRANT=/usr/bin/vagrant
VAGRANT_BUILD=vagrant

SRCROOT := $(realpath $(SRCROOT))
MAKEROOT := $(realpath $(MAKEROOT))

PHOTON_STAGE?=$(SRCROOT)/stage
PHOTON_LOGS_DIR=$(PHOTON_STAGE)/LOGS
PHOTON_RPMS_DIR=$(PHOTON_STAGE)/RPMS
PHOTON_SPECS_DIR?=$(SRCROOT)/SPECS
PHOTON_SRCS_DIR=$(PHOTON_STAGE)/SOURCES
PHOTON_PUBLISH_RPMS_DIR=$(PHOTON_STAGE)/PUBLISHRPMS

PHOTON_PKG_BUILDER_DIR=$(SRCROOT)/support/package-builder
PHOTON_PULL_SOURCES_DIR=$(SRCROOT)/support/pullsources
PHOTON_PULL_PUBLISH_RPMS_DIR=$(SRCROOT)/support/pullpublishrpms

PHOTON_INSTALLER_DIR=$(SRCROOT)/installer
PHOTON_INSTALLER=$(PHOTON_INSTALLER_DIR)/photonInstaller.py
PHOTON_INSTALLER_PACKAGE_LIST?=$(PHOTON_INSTALLER_DIR)/package_list.json
PHOTON_PACKAGE_BUILDER=$(PHOTON_PKG_BUILDER_DIR)/builder.py
PHOTON_PACKAGE_LIST?=$(PHOTON_PKG_BUILDER_DIR)/input.json
PHOTON_PULL_SOURCES=$(PHOTON_PULL_SOURCES_DIR)/pullsources.py
PHOTON_BINTRAY_CONFIG?=$(PHOTON_PULL_SOURCES_DIR)/bintray.conf
PHOTON_PULL_PUBLISH_RPMS=$(PHOTON_PULL_PUBLISH_RPMS_DIR)/pullpublishrpms.sh

PHOTON_CHROOT_CLEANER=$(PHOTON_PKG_BUILDER_DIR)/cleanup-build-root.sh
PHOTON_RPMS_DIR_NOARCH=$(PHOTON_RPMS_DIR)/noarch
PHOTON_RPMS_DIR_X86_64=$(PHOTON_RPMS_DIR)/x86_64
PHOTON_PACKER_TEMPLATES=$(SRCROOT)/support/packer-templates

PHOTON_CHROOT_PATH=/mnt/photonroot
PHOTON_FS_ROOT=/usr/src/photon
PHOTON_CHROOT_RPMS_DIR_NOARCH=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/RPMS/noarch
PHOTON_CHROOT_RPMS_DIR_X86_64=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/RPMS/x86_64
PHOTON_CHROOT_BUILD_DIR=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/BUILD
PHOTON_CHROOT_BUILDROOT_DIR=$(PHOTON_CHROOT_PATH)/$(PHOTON_FS_ROOT)/BUILDROOT
