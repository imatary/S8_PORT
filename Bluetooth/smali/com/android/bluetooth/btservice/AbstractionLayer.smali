.class public final Lcom/android/bluetooth/btservice/AbstractionLayer;
.super Ljava/lang/Object;
.source "AbstractionLayer.java"


# static fields
.field static final BREDR_STATE_OFF:I = 0x10

.field static final BREDR_STATE_ON:I = 0x11

.field static final BT_ACL_STATE_CONNECTED:I = 0x0

.field static final BT_ACL_STATE_DISCONNECTED:I = 0x1

.field static final BT_BOND_STATE_BONDED:I = 0x1

.field static final BT_BOND_STATE_NONE:I = 0x0

.field static final BT_DEVICE_TYPE_BLE:I = 0x2

.field static final BT_DEVICE_TYPE_BREDR:I = 0x1

.field static final BT_DEVICE_TYPE_DUAL:I = 0x3

.field static final BT_DISCOVERY_STARTED:I = 0x1

.field static final BT_DISCOVERY_STOPPED:I = 0x0

.field static final BT_PROPERTY_ADAPTER_BONDED_DEVICES:I = 0x8

.field static final BT_PROPERTY_ADAPTER_DISCOVERABLE_TIMEOUT:I = 0x9

.field static final BT_PROPERTY_ADAPTER_SCAN_MODE:I = 0x7

.field static final BT_PROPERTY_APPEARANCE:I = 0xf0

.field static final BT_PROPERTY_BDADDR:I = 0x2

.field static final BT_PROPERTY_BDNAME:I = 0x1

.field static final BT_PROPERTY_CLASS_OF_DEVICE:I = 0x4

.field static final BT_PROPERTY_LOCAL_FIRMWARE:I = 0x11

.field static final BT_PROPERTY_LOCAL_LE_FEATURES:I = 0xd

.field static final BT_PROPERTY_LOCAL_LMP_SUB_VERSION:I = 0x10

.field static final BT_PROPERTY_LOCAL_LMP_VERSION:I = 0xf

.field static final BT_PROPERTY_LOCAL_MANUFACTURER:I = 0xe

.field static final BT_PROPERTY_MANUFACTURER_DATA:I = 0xf1

.field static final BT_PROPERTY_REMOTE_ADDRESS_TYPE:I = 0x17

.field static final BT_PROPERTY_REMOTE_CONNECTION_INTERVAL:I = 0x18

.field static final BT_PROPERTY_REMOTE_FRIENDLY_NAME:I = 0xa

.field static final BT_PROPERTY_REMOTE_LINK_TYPE:I = 0x15

.field static final BT_PROPERTY_REMOTE_LL_FEATURE:I = 0x1c

.field static final BT_PROPERTY_REMOTE_LMP_SUB_VERSION:I = 0x14

.field static final BT_PROPERTY_REMOTE_LMP_VERSION:I = 0x13

.field static final BT_PROPERTY_REMOTE_MANUFACTURER:I = 0x12

.field static final BT_PROPERTY_REMOTE_PAIRING_RESPONSE_AUTH:I = 0x1a

.field static final BT_PROPERTY_REMOTE_PAIRING_RESPONSE_OOB:I = 0x19

.field static final BT_PROPERTY_REMOTE_ROLE:I = 0x16

.field static final BT_PROPERTY_REMOTE_RSSI:I = 0xb

.field static final BT_PROPERTY_REMOTE_SMP_FAIL_REASON:I = 0x1b

.field static final BT_PROPERTY_REMOTE_VERSION_INFO:I = 0xc

.field static final BT_PROPERTY_SERVICE_RECORD:I = 0x6

.field static final BT_PROPERTY_TYPE_OF_DEVICE:I = 0x5

.field static final BT_PROPERTY_UUIDS:I = 0x3

.field static final BT_SCAN_MODE_CONNECTABLE:I = 0x1

.field static final BT_SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x2

.field static final BT_SCAN_MODE_NONE:I = 0x0

.field static final BT_SSP_VARIANT_CONSENT:I = 0x2

.field static final BT_SSP_VARIANT_PASSKEY_CONFIRMATION:I = 0x0

.field static final BT_SSP_VARIANT_PASSKEY_ENTRY:I = 0x1

.field static final BT_SSP_VARIANT_PASSKEY_NOTIFICATION:I = 0x3

.field static final BT_STATE_OFF:I = 0x0

.field static final BT_STATE_ON:I = 0x1

.field public static final BT_STATUS_AUTH_FAILURE:I = 0x9

.field public static final BT_STATUS_AUTH_REJECTED:I = 0xb

.field public static final BT_STATUS_AUTH_TIMEOUT:I = 0xc

.field public static final BT_STATUS_BUSY:I = 0x4

.field public static final BT_STATUS_DONE:I = 0x5

.field public static final BT_STATUS_FAIL:I = 0x1

.field public static final BT_STATUS_NOMEM:I = 0x3

.field public static final BT_STATUS_NOT_READY:I = 0x2

.field public static final BT_STATUS_PARM_INVALID:I = 0x7

.field public static final BT_STATUS_RMT_DEV_DOWN:I = 0xa

.field public static final BT_STATUS_SUCCESS:I = 0x0

.field public static final BT_STATUS_UNHANDLED:I = 0x8

.field public static final BT_STATUS_UNSUPPORTED:I = 0x6

.field static final BT_UUID_SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
