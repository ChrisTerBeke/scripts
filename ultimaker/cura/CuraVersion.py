# Copyright (c) 2020 Ultimaker B.V.
# Cura is released under the terms of the LGPLv3 or higher.
# Copy this file into the 'cura' directory of the Cura repository.
import os

# environment config
UM_CLOUD_POSTFIX = os.getenv("UM_CLOUD_POSTFIX", "")
CURA_BUILD_TYPE = os.getenv("CURA_BUILD_TYPE", "dev")

CuraVersion = "99.99.99"
CuraBuildType = CURA_BUILD_TYPE
CuraDebugMode = True
CuraCloudAPIRoot = "https://api{}.ultimaker.com".format(UM_CLOUD_POSTFIX)
CuraCloudAccountAPIRoot = "https://account{}.ultimaker.com".format(UM_CLOUD_POSTFIX)
CuraMarketplaceRoot = "https://marketplace{}.ultimaker.com".format(UM_CLOUD_POSTFIX)
