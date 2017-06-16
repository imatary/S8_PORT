.class public Lcom/android/bluetooth/gatt/GattService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/GattService$1;,
        Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;,
        Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ClientMap;,
        Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerMap;,
        Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;,
        Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;
    }
.end annotation


# static fields
.field private static final ADVT_STATE_ONFOUND:I = 0x0

.field private static final ADVT_STATE_ONLOST:I = 0x1

.field private static final ADV_REQUESTED:I = 0xc

.field private static final APPLICATON_IF:Ljava/lang/String; = "APP_IF"

.field private static final BLUETOOTH_LOGGING_APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field private static final BLUETOOTH_LOGGING_LAST_DATE:Ljava/lang/String; = "LE_LAST_DATE"

.field private static final BLUETOOTH_LOGGING_LATR_FEATURE:Ljava/lang/String; = "LATR"

.field private static final BLUETOOTH_LOGGING_LEAV_FEATURE:Ljava/lang/String; = "LEAV"

.field private static final BLUETOOTH_LOGGING_LECC_FEATURE:Ljava/lang/String; = "LECC"

.field private static final BLUETOOTH_LOGGING_LESC_BATTERY_FEATURE:Ljava/lang/String; = "LESC4BATTERY"

.field private static final BLUETOOTH_LOGGING_LESC_FEATURE:Ljava/lang/String; = "LESC"

.field private static final BLUETOOTH_LOGGING_LESI_FEATURE:Ljava/lang/String; = "LESI"

.field private static final BLUETOOTH_LOGGING_LSTA_FEATURE:Ljava/lang/String; = "LSTA"

.field private static final BLUETOOTH_LOGGING_LSTR_FEATURE:Ljava/lang/String; = "LSTR"

.field private static final CALLING_PROCESS:Ljava/lang/String; = "CALLING_PROCESS"

.field private static final CAMP_REQUEST_EXTRA_KEY:Ljava/lang/String; = "RECEIVER"

.field private static final CAMP_REQUEST_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final CAMP_REQUEST_TYPE_ALL:Ljava/lang/String; = "ALL"

.field private static final CAMP_REQUEST_TYPE_BLE:Ljava/lang/String; = "BLE"

.field private static final DBG:Z = true

.field private static final FIDO_UUIDS:[Ljava/util/UUID;

.field private static final GATT_ERROR:I = 0x85

.field private static final GATT_IF_FULL:I = 0xa1

.field private static final GATT_NO_RESOURCES:I = 0x80

.field private static final HID_UUIDS:[Ljava/util/UUID;

.field private static final IS_BACKGROUND:Ljava/lang/String; = "IS_BACKGROUND"

.field private static final LOGGING_APPLICATION:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final LOGGING_EXTRA_KEY_4_BATTERY:Ljava/lang/String; = "BLE_USAGE"

.field private static final LOGGING_INTENT:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final LOGGING_REQUEST_INTENT_4_BATTERY:Ljava/lang/String; = "com.sec.android.action.RESOURCE_BLE_USAGE_REQUEST"

.field private static final LOGGING_RESPONSE_INTENT_4_BATTERY:Ljava/lang/String; = "com.sec.android.action.RESOURCE_BLE_USAGE_RESPONSE"

.field private static final LOW_LATENCY:Ljava/lang/String; = "LowLatency"

.field private static final MAC_ADDRESS_LENGTH:I = 0x6

.field private static final MAX_CONNECTION_COUNT:Ljava/lang/String; = "GATT_MAX_CONNECTION_COUNT"

.field private static final MESSAGE_GATT_CLIENT_GET_CHARACTERISTIC:I = 0x3

.field private static final MESSAGE_GATT_CLIENT_GET_DESCRIPTOR:I = 0x5

.field private static final MESSAGE_GATT_CLIENT_GET_INCLUDED_SERVICE:I = 0x4

.field private static final MESSAGE_GATT_CONTINUE_SEARCH:I = 0x2

.field private static final MESSAGE_GATT_CONTINUE_SERVICE_DECLARATION:I = 0x7

.field private static final MESSAGE_GATT_STOP_NEXT_SERVICE:I = 0x6

.field private static final MESSAGE_GATT_UNREGISTER_CLIENT:I = 0x1

.field private static final MESSAGE_REPORT_RESULT_4_BATTERY:I = 0x5

.field private static final MESSAGE_START_ADV:I = 0x3

.field private static final MESSAGE_START_SCAN:I = 0x1

.field private static final MESSAGE_STOP_ADV:I = 0x4

.field private static final MESSAGE_STOP_SCAN:I = 0x2

.field static final NUM_SCAN_EVENTS_KEPT:I = 0x14

.field private static final PDBG:Z

.field private static final REQUESTED_SCAN_TYPE:Ljava/lang/String; = "REQ_SCAN_TYPE"

.field private static final SCAN_ABUSE_COUNT:I = 0x1388

.field private static final SCAN_ABUSE_TIME:I = 0x12c

.field private static final SCAN_ACTUAL:I = 0xb

.field static final SCAN_FILTER_ENABLED:I = 0x1

.field static final SCAN_FILTER_MODIFIED:I = 0x2

.field private static final SCAN_MODE_BALANCED_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BALANCED_WINDOW_MS:I = 0x7d0

.field private static final SCAN_MODE_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_LATENCY_WINDOW_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_LOW_POWER_WINDOW_MS:I = 0x1f4

.field private static final SCAN_MODE_SAMSUNG_BALANCED:I = 0x28

.field private static final SCAN_MODE_SAMSUNG_LOW_LATENCY:I = 0x64

.field private static final SCAN_MODE_SAMSUNG_LOW_POWER:I = 0xa

.field private static final SCAN_REQUESTED:I = 0xa

.field private static final SCAN_RESULT_COUNT:Ljava/lang/String; = "SCAN_RESULT_COUNT"

.field public static final SCAN_TYPE_BACKGROUND_APP:Ljava/lang/String; = "SCAN_FROM_BACKGROUND_APP"

.field public static final SCAN_TYPE_BATCH:Ljava/lang/String; = "BATCH_SCAN"

.field public static final SCAN_TYPE_IMMEDIATE_FILTER:Ljava/lang/String; = "FULL_SCAN_IMMEDIATE_FILTER"

.field public static final SCAN_TYPE_IMMEDIATE_NONFILTER:Ljava/lang/String; = "FULL_SCAN_IMMEDIATE_NONFILTER"

.field public static final SCAN_TYPE_ONBOTH:Ljava/lang/String; = "FULL_SCAN_ONBOTH"

.field public static final SCAN_TYPE_ONFOUND:Ljava/lang/String; = "FULL_SCAN_ONFOUND"

.field public static final SCAN_TYPE_ONLOST:Ljava/lang/String; = "FULL_SCAN_ONLOST"

.field private static final TAG:Ljava/lang/String; = "BtGatt.GattService"

.field private static final TIME_STAMP_LENGTH:I = 0x2

.field private static final TOTAL_SCAN_COUNT:Ljava/lang/String; = "TOTAL_SCAN_COUNT"

.field private static final TRUNCATED_RESULT_SIZE:I = 0xb

.field private static final VDBG:Z

.field private static mScanAbuseCount:I

.field private static mScanAbuseTime:I

.field private static sGattService:Lcom/android/bluetooth/gatt/GattService;


# instance fields
.field private BLE_ADV_IF_DB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private BLE_ADV_REQUESTED_DB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private BLE_ADV_TIME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private BLE_SCAN_ACTUAL_DB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private BLE_SCAN_IF_DB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private BLE_SCAN_REQUESTED_DB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private BLE_SCAN_TIME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private gattClientDatabases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAbusiveScanPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

.field private mAdvertisingServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mCalendar:Ljava/util/Calendar;

.field mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

.field private mContext:Landroid/content/Context;

.field private mCurrScanApplication:Ljava/lang/String;

.field private mCurrScanInterval:I

.field private mCurrScanWindow:I

.field mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

.field mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

.field private mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

.field mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

.field private mLEPref:Landroid/content/SharedPreferences;

.field private mLatrPref:Landroid/content/SharedPreferences;

.field mLeacReportedApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLeavPref:Landroid/content/SharedPreferences;

.field private mLeccPref:Landroid/content/SharedPreferences;

.field private mLesc4BatteryPref:Landroid/content/SharedPreferences;

.field private mLescPref:Landroid/content/SharedPreferences;

.field private mLesiPref:Landroid/content/SharedPreferences;

.field private mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

.field private mLstaPref:Landroid/content/SharedPreferences;

.field private mLstrPref:Landroid/content/SharedPreferences;

.field private mMaxScanFilters:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReliableQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScanEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

.field mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

.field private mServiceDeclarations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/ServiceDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/bluetooth/gatt/GattService;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/bluetooth/gatt/GattService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLEPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/gatt/GattService;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/gatt/GattService;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->updateAdvTime(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/bluetooth/gatt/GattService;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap11(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/bluetooth/gatt/GattService;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->increaseAdvCount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/bluetooth/gatt/GattService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->increaseBGAppScanCount(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->increaseScanCount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->increaseScanTypeCount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->refreshAbusiveScanPackages()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->refreshAbusiveScanValue()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->refreshScanType(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;J)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->updateScanTime(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->removeLeacReportedClientApp(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->removeLeacReportedServerApp(I)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->reportData4Battery()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->reportData()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->reportLEAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->setActualScanType(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->setAdvTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->setAdvType(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->setRequestedScanType(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->setScanTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->popActualScanType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/android/bluetooth/gatt/GattService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->stopNextService(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->popRequestedAdvType(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->popRequestedScanType(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/bluetooth/gatt/GattService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getAdvProcessName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/bluetooth/gatt/GattService;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->getAdvProcessName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/bluetooth/gatt/GattService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/bluetooth/gatt/GattService;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->msg2Log(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/UUID;

    const-string/jumbo v1, "00002A4A-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "00002A4B-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "00002A4C-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "00002A4D-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    new-array v0, v4, [Ljava/util/UUID;

    const-string/jumbo v1, "0000FFFD-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->FIDO_UUIDS:[Ljava/util/UUID;

    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->classInitNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    new-instance v0, Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-direct {v0}, Lcom/samsung/bt/data/BluetoothDataManager;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAbusiveScanPackages:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/HandleMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->gattClientDatabases:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    new-instance v0, Lcom/android/bluetooth/gatt/GattService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$1;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetLpmScanSettingsForAbuseScanApp(Landroid/bluetooth/le/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .locals 12

    const-string/jumbo v10, "BtGatt.GattService"

    const-string/jumbo v11, "SetLpmScanSettingsForAbuseScanApp"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v7

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanFilterRssiValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getTrackableScanFilterRssiValue()I

    move-result v9

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    new-instance v10, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v10, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetTrackableScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v8

    return-object v8
.end method

.method private addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    new-instance v2, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    invoke-direct {v2}, Lcom/android/bluetooth/gatt/ServiceDeclaration;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkAbuseScanCount(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BIGDATA] checkAbuseScanCount() pName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", scanCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseCount:I

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, p2, p1}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLeAbuseScanLog(JILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkAbuseScanTime(Ljava/lang/String;J)V
    .locals 8

    const/16 v7, 0x40

    sget-boolean v4, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BIGDATA] checkAbuseScanTime() pName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    move-object v3, p1

    :goto_0
    sget v4, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseTime:I

    int-to-long v4, v4

    cmp-long v4, p2, v4

    if-ltz v4, :cond_1

    const-string/jumbo v4, "LowLatency"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, v5, v0}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLeAbuseScanLog(JILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private clearAllPrefs()V
    .locals 3

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "clearAllPrefs() - SharedPrefence Exception occured. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLEPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLeccPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static declared-synchronized clearGattService()V
    .locals 2

    const-class v0, Lcom/android/bluetooth/gatt/GattService;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private continueServiceDeclaration(III)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "continueServiceDeclaration() - srvcHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    const/4 v15, 0x0

    if-nez p2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNext()Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;

    move-result-object v15

    :cond_1
    if-eqz v15, :cond_6

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "continueServiceDeclaration() - next entry type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-byte v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->type:B

    packed-switch v4, :pswitch_data_0

    :goto_0
    if-eqz v16, :cond_3

    const-string/jumbo v4, "BtGatt.GattService"

    const-string/jumbo v5, "continueServiceDeclaration() - completed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    if-eqz v18, :cond_7

    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v7, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v7, v8}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move/from16 v0, p2

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->removePendingDeclaration()V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V

    :cond_3
    return-void

    :pswitch_0
    iget-boolean v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->advertisePreferred:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v7, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->getNumHandles()I

    move-result v12

    move-object/from16 v4, p0

    move/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddServiceNative(IIIJJI)V

    goto :goto_0

    :pswitch_1
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    iget v12, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->properties:I

    iget v13, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v5 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddCharacteristicNative(IIJJII)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v8

    iget-object v4, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v10

    iget v12, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->permissions:I

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddDescriptorNative(IIJJI)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v5, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->uuid:Ljava/util/UUID;

    iget v6, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->serviceType:I

    iget v7, v15, Lcom/android/bluetooth/gatt/ServiceDeclaration$Entry;->instance:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddIncludedServiceNative(III)V

    goto/16 :goto_0

    :cond_5
    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->gattServerStartServiceNative(III)V

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v4, v14, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, p2

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(IIILandroid/os/ParcelUuid;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private deleteServices(I)V
    .locals 9

    const-string/jumbo v6, "BtGatt.GattService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteServices() - serverIf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v6}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    iget v6, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    iget v6, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v6, p1, :cond_0

    iget v6, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v4, v1}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method private dumpScanNAdvData(Ljava/lang/StringBuilder;)V
    .locals 12

    const-string/jumbo v8, "\n"

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v8, "[Current scan settings]"

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currScanWindow / currScanInterval: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v9}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrScanWindow()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v9}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrScanInterval()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v8, "[Current scan list]=[Application @ scan type]=[cumulated time]=[calling count of the app]"

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    const-wide/16 v10, 0x0

    invoke-interface {v8, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v8, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "LSTR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v8, "[Current adv list]=[Application @ adv type]=[cumulated time]=[calling count of the app]"

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    const-wide/16 v10, 0x0

    invoke-interface {v8, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    const/4 v9, 0x0

    invoke-interface {v8, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "LATR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v8, "\n"

    invoke-static {p1, v8}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method private enforceAdminPermission()V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceImpersonatationPermission()V
    .locals 2

    const-string/jumbo v0, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v1, "Need UPDATE_DEVICE_STATS permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforcePrivilegedPermission()V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string/jumbo v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method private native gattClientConfigureMTUNative(II)V
.end method

.method private native gattClientConnectNative(ILjava/lang/String;ZIZI)V
.end method

.method private native gattClientConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V
.end method

.method private native gattClientDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattClientExecuteWriteNative(IZ)V
.end method

.method private native gattClientGetDeviceTypeNative(Ljava/lang/String;)I
.end method

.method private native gattClientGetGattDbNative(I)V
.end method

.method private native gattClientMonitorRssiNative(ILjava/lang/String;III)V
.end method

.method private native gattClientReadCharacteristicNative(III)V
.end method

.method private native gattClientReadDescriptorNative(III)V
.end method

.method private native gattClientReadRemoteRssiNative(ILjava/lang/String;)V
.end method

.method private native gattClientRefreshNative(ILjava/lang/String;)V
.end method

.method private native gattClientRegisterAppNative(JJ)V
.end method

.method private native gattClientRegisterForNotificationsNative(ILjava/lang/String;IZ)V
.end method

.method private native gattClientSearchServiceNative(IZJJ)V
.end method

.method private native gattClientUnregisterAppNative(I)V
.end method

.method private native gattClientWriteCharacteristicNative(IIII[B)V
.end method

.method private native gattClientWriteDescriptorNative(IIII[B)V
.end method

.method private native gattConnectionParameterUpdateNative(ILjava/lang/String;IIII)V
.end method

.method private native gattServerAddCharacteristicNative(IIJJII)V
.end method

.method private native gattServerAddDescriptorNative(IIJJI)V
.end method

.method private native gattServerAddIncludedServiceNative(III)V
.end method

.method private native gattServerAddServiceNative(IIIJJI)V
.end method

.method private native gattServerConnectNative(ILjava/lang/String;ZI)V
.end method

.method private native gattServerConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V
.end method

.method private native gattServerDeleteServiceNative(II)V
.end method

.method private native gattServerDisconnectIncomingConnClientsNative()V
.end method

.method private native gattServerDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattServerRegisterAppNative(JJ)V
.end method

.method private native gattServerSendIndicationNative(III[B)V
.end method

.method private native gattServerSendNotificationNative(III[B)V
.end method

.method private native gattServerSendResponseNative(IIIIII[BI)V
.end method

.method private native gattServerStartServiceNative(III)V
.end method

.method private native gattServerStopServiceNative(II)V
.end method

.method private native gattServerUnregisterAppNative(I)V
.end method

.method private native gattTestNative(IJJLjava/lang/String;[B[SIIIII)V
.end method

.method private getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getActualScanMode(Landroid/bluetooth/le/ScanSettings;)I
    .locals 6

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrScanMode()I

    move-result v0

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrScanValue()I

    move-result v1

    const/16 v4, 0x64

    if-ne v2, v4, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v3, v4

    :goto_0
    if-le v3, v1, :cond_1

    return v2

    :cond_0
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v3, 0xa

    goto :goto_0

    :pswitch_1
    const/16 v3, 0x28

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x64

    goto :goto_0

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAdvProcessName(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_IF_DB:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "getAdvProcessName: null string made"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getAdvProcessName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    sparse-switch p2, :sswitch_data_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAdvProcessName: no such advertise mode at requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "getAdvProcessName: null string made"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :sswitch_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@LowPower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Balanced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@LowLatency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Custom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private getCallingProcessName()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x3a

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown App (UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCurrTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDeviceTypeNative(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getDeviceType() - device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static declared-synchronized getGattService()Lcom/android/bluetooth/gatt/GattService;
    .locals 4

    const/4 v3, 0x0

    const-class v1, Lcom/android/bluetooth/gatt/GattService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGattService(): returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;

    if-nez v0, :cond_1

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v2, "getGattService(): service is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRequestedScanInterval(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x1388

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x1388

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1388

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCustomScanInterval()I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private getRequestedScanType(Lcom/android/bluetooth/gatt/ScanClient;)Ljava/lang/String;
    .locals 7

    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v0

    iget-object v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-string/jumbo v1, ""

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v4, "BtGatt.GattService"

    const-string/jumbo v5, "[BIGDATA] getRequestedScanType() callback type matching error"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v4, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BIGDATA] getRequestedScanType() scanType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :pswitch_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-string/jumbo v1, "BATCH_SCAN"

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/ScanManager;->isScanFilteringMode(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, "FULL_SCAN_IMMEDIATE_FILTER"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "FULL_SCAN_IMMEDIATE_NONFILTER"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "FULL_SCAN_ONLOST"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "FULL_SCAN_ONFOUND"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "FULL_SCAN_ONBOTH"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getRequestedScanWindow(Landroid/bluetooth/le/ScanSettings;)I
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    const/16 v1, 0x1f4

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x7d0

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x1388

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCustomScanWindow()I

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch
.end method

.method private getScanProcessName(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_IF_DB:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "getScanProcessName: null string made"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getScanProcessName(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, -0x1

    const-string/jumbo v0, ""

    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    if-nez v2, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "getScanProcessName: BLE_SCAN_REQUESTED_DB is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_0
    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScanProcessName: no such scan mode at requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "getScanProcessName: null string made"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@LowPower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Balanced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@LowLatency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Custom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0xb

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    if-nez v2, :cond_4

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "getScanProcessName: BLE_SCAN_ACTUAL_DB is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    return-object v0

    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_2
    sparse-switch v1, :sswitch_data_1

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScanProcessName: no such scan mode at actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :sswitch_4
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@LowPower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Balanced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@LowLatency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@Custom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x64 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method private getScanSettings(Ljava/lang/String;Landroid/bluetooth/le/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .locals 16

    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "getScanSettings"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p1}, Lcom/android/bluetooth/Utils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v13, "BtGatt.GattService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Is it foreground application = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->isBatchClient(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    :cond_0
    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "Its third party background application, change scanmode to low power"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getScanFilterRssiValue()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getTrackableScanFilterRssiValue()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v6

    new-instance v13, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v13}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v13, v9}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetTrackableScanFilterRssiThreshold(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v11

    return-object v11

    :cond_1
    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "Its a background application running with Low Power scan mode"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_2
    const-string/jumbo v13, "BtGatt.GattService"

    const-string/jumbo v14, "not a background application"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private getScanSettingsForAbuseScanApp(Ljava/lang/String;Landroid/bluetooth/le/ScanSettings;)Landroid/bluetooth/le/ScanSettings;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->isAbuseScanApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Modify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'s scan Settings to Low power"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/GattService;->SetLpmScanSettingsForAbuseScanApp(Landroid/bluetooth/le/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p2
.end method

.method private getSubProcessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x40

    const/16 v4, 0x3a

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->legacyForegroundApp:Z

    :goto_1
    iget-boolean v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasPeersMacAddressPermission:Z

    if-nez v4, :cond_2

    iget-boolean v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    if-eqz v4, :cond_3

    :goto_2
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_2
.end method

.method private increaseAdvCount(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private increaseBGAppScanCount(Z)V
    .locals 6

    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BIGDATA] increaseBGScanCount() isBGApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "SCAN_FROM_BACKGROUND_APP"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "SCAN_FROM_BACKGROUND_APP"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private increaseInt(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    goto :goto_0
.end method

.method private increaseLong(J)J
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    move-wide v0, p1

    goto :goto_0
.end method

.method private increaseScanCount(Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0x3a

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v5

    invoke-interface {v3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v4, p1

    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_2
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_2
.end method

.method private increaseScanResult()V
    .locals 8

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "SCAN_RESULT_COUNT"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "SCAN_RESULT_COUNT"

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->increaseLong(J)J

    move-result-wide v6

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private increaseScanTypeCount(Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "TOTAL_SCAN_COUNT"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v4

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "TOTAL_SCAN_COUNT"

    invoke-direct {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private native initializeNative()V
.end method

.method private isAbuseScanApp(Ljava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mAbusiveScanPackages:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is a Abuse Scan Application"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isBackGroundApp(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/bluetooth/Utils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isBatchClient(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isFidoUUID(Ljava/util/UUID;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/bluetooth/gatt/GattService;->FIDO_UUIDS:[Ljava/util/UUID;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isHidUuid(Ljava/util/UUID;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isRestrictedCharUuid(Ljava/util/UUID;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->isHidUuid(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private isRestrictedSrvcUuid(Ljava/util/UUID;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->isFidoUUID(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method private loadLogPref()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mCalendar:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LESC"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LSTR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LSTA"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_IF_DB:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LEAV"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LATR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_REQUESTED_DB:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_IF_DB:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LE_LAST_DATE"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLEPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LESC4BATTERY"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LESI"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LECC"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLeccPref:Landroid/content/SharedPreferences;

    const/16 v4, 0x1388

    sput v4, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseCount:I

    const/16 v4, 0x12c

    sput v4, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseTime:I

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLEPref:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "LE_LAST_DATE"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->reportData()V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLEPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "LE_LAST_DATE"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private msg2Log(I)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg2Log: no such action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "unKnown"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "MESSAGE_START_SCAN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "MESSAGE_STOP_SCAN"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "MESSAGE_START_ADV"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "MESSAGE_STOP_ADV"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "MESSAGE_REPORT_RESULT_4_BATTERY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    return v2

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isBleEnabledByApp()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private parseBatchScanResults(II[B)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current time is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseTruncatedResults(I[B)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseFullResults(I[B)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private parseFullResults(I[B)Ljava/util/Set;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Batch record : "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v13, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    :goto_0
    move-object/from16 v0, p2

    array-length v4, v0

    if-ge v13, v4, :cond_0

    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v13, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v10}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    add-int/lit8 v13, v13, 0x6

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v16, v13, 0x1

    aget-byte v7, p2, v13

    const/4 v4, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v22

    sub-long v8, v14, v22

    add-int/lit8 v13, v16, 0x2

    add-int/lit8 v16, v13, 0x1

    aget-byte v12, p2, v13

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v12}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v11

    add-int v13, v16, v12

    add-int/lit8 v16, v13, 0x1

    aget-byte v20, p2, v13

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v19

    add-int v13, v16, v20

    add-int v4, v12, v20

    new-array v0, v4, [B

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-static {v11, v4, v0, v6, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v4, v1, v12, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "ScanRecord : "

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/bluetooth/le/ScanResult;

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    invoke-direct/range {v4 .. v9}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v17
.end method

.method private parseTruncatedResults(I[B)Ljava/util/Set;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "batch record "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/HashSet;

    move/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, p1

    if-ge v9, v0, :cond_0

    mul-int/lit8 v2, v9, 0xb

    const/16 v4, 0xb

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v12

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-static {v12, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/16 v2, 0x8

    aget-byte v5, v12, v2

    const/16 v2, 0x9

    const/4 v4, 0x2

    invoke-static {v12, v2, v4}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v14

    sub-long v6, v10, v14

    new-instance v2, Landroid/bluetooth/le/ScanResult;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-static {v4}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v13
.end method

.method private parseUuids([B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    if-ge v1, v6, :cond_0

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, p1, v1

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    return-object v5

    :cond_1
    add-int/lit8 v1, v2, 0x1

    aget-byte v3, p1, v2

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v1, v6

    goto :goto_0

    :pswitch_0
    move v2, v1

    :goto_1
    if-le v0, v10, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p1, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p1, v1

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v4, v6

    add-int/lit8 v0, v0, -0x2

    const-string/jumbo v6, "%08x-0000-1000-8000-00805f9b34fb"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private popActualScanType(Ljava/lang/String;)I
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GSIM LOG]: popActualScanType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not matching at  BLE_SCAN_ACTUAL_DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private popRequestedAdvType(Ljava/lang/String;I)I
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_IF_DB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GSIM LOG]: popRequestedAdvType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not matching at  BLE_ADV_REQUESTED_DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private popRequestedScanType(Ljava/lang/String;I)I
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_IF_DB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[GSIM LOG]: popRequestedScanType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not matching at  BLE_SCAN_REQUESTED_DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private refreshAbusiveScanPackages()V
    .locals 2

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "refreshAbusiveScanPackages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "not support downloadable DB. skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getAbuseScanPackages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAbusiveScanPackages:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private refreshAbusiveScanValue()V
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "refreshAbusiveScanValue()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->isSCPMClientExist()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "not support downloadable DB. skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getAbuseMaxScanCount()I

    move-result v0

    sput v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseCount:I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->getAbuseAccumulatedScanTime()I

    move-result v0

    sput v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseTime:I

    sget v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseCount:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0x1388

    sput v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseCount:I

    :cond_1
    sget v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseTime:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0x12c

    sput v0, Lcom/android/bluetooth/gatt/GattService;->mScanAbuseTime:I

    :cond_2
    return-void
.end method

.method private refreshScanType(I)V
    .locals 12

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v0

    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v8, v0, v4

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-direct {p0, v3, v8, v9}, Lcom/android/bluetooth/gatt/GattService;->updateScanTime(Ljava/lang/String;J)Z

    invoke-direct {p0, v3, p1}, Lcom/android/bluetooth/gatt/GattService;->setActualScanType(Ljava/lang/String;I)V

    const-wide/16 v8, 0x0

    invoke-direct {p0, v3, v8, v9}, Lcom/android/bluetooth/gatt/GattService;->updateScanTime(Ljava/lang/String;J)Z

    invoke-direct {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->setScanTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_0
    const-wide/16 v4, 0x0

    :try_start_1
    const-string/jumbo v6, "BtGatt.GattService"

    const-string/jumbo v8, "refreshScanType: process not found prevTime is 0"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v7

    return-void
.end method

.method private removeLeacReportedClientApp(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeLeacReportedClientApp, appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", callingApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeLeacReportedServerApp(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeLeacReportedServerApp, appId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", callingApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removePendingDeclaration()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private reportData()V
    .locals 30

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_1

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[GSIM LOG]: reportData, LESC: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", value : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/android/bluetooth/gatt/GattService;->checkAbuseScanCount(Ljava/lang/String;I)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    const-string/jumbo v27, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_0

    const-string/jumbo v26, "app_id"

    const-string/jumbo v27, "com.android.bluetooth"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "feature"

    const-string/jumbo v27, "LESC"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "extra"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "value"

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v26, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.android.providers.context"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "data"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v8

    return-void

    :catch_1
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLescPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v1}, Lcom/android/bluetooth/gatt/GattService;->updateScanTimeFromHashmap(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v24

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_4

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[GSIM LOG]: reportData, LSTR: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", value : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v5, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->checkAbuseScanTime(Ljava/lang/String;J)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    const-string/jumbo v27, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_3

    const-string/jumbo v26, "app_id"

    const-string/jumbo v27, "com.android.bluetooth"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "feature"

    const-string/jumbo v27, "LSTR"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "extra"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "value"

    new-instance v27, Ljava/lang/Long;

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    invoke-direct/range {v27 .. v29}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v26, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.android.providers.context"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "data"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :catch_2
    move-exception v8

    return-void

    :catch_3
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v1}, Lcom/android/bluetooth/gatt/GattService;->updateScanTimeFromHashmap(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-wide v24

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_7

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[GSIM LOG]: reportData, LSTA: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", value : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    const-string/jumbo v27, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string/jumbo v26, "app_id"

    const-string/jumbo v27, "com.android.bluetooth"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "feature"

    const-string/jumbo v27, "LSTA"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "extra"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "value"

    new-instance v27, Ljava/lang/Long;

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    invoke-direct/range {v27 .. v29}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v26, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.android.providers.context"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "data"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :catch_4
    move-exception v8

    return-void

    :catch_5
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_9

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[GSIM LOG]: reportData, LST: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/gatt/GattService;->setScanTime(Ljava/lang/String;)V

    const/16 v26, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-wide/16 v28, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v26, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1, v5}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-wide/16 v28, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v26

    monitor-exit v27

    throw v26

    :cond_a
    monitor-exit v27

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v23

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_c

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[GSIM LOG]: reportData, LEAV: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", value : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    const-string/jumbo v27, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    const-string/jumbo v26, "app_id"

    const-string/jumbo v27, "com.android.bluetooth"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "feature"

    const-string/jumbo v27, "LEAV"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "extra"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "value"

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v26, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.android.providers.context"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "data"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :catch_6
    move-exception v8

    return-void

    :catch_7
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLeavPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_8

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v1}, Lcom/android/bluetooth/gatt/GattService;->updateAdvTimeFromHashmap(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-wide/16 v28, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_9

    move-result-wide v24

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_f

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[GSIM LOG]: reportData, LATR: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", value : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v26

    const-string/jumbo v27, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_e

    const-string/jumbo v26, "app_id"

    const-string/jumbo v27, "com.android.bluetooth"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "feature"

    const-string/jumbo v27, "LATR"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "extra"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v26, "value"

    new-instance v27, Ljava/lang/Long;

    const-wide/16 v28, 0x3e8

    mul-long v28, v28, v24

    invoke-direct/range {v27 .. v29}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->intValue()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v26, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "com.samsung.android.providers.context"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v26, "data"

    move-object/from16 v0, v26

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    :catch_8
    move-exception v8

    return-void

    :catch_9
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    move-object/from16 v27, v0

    monitor-enter v27

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_11

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "[GSIM LOG]: reportData, LAT: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/bluetooth/gatt/GattService;->setAdvTime(Ljava/lang/String;)V

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-interface {v11, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v26

    monitor-exit v27

    throw v26

    :cond_12
    monitor-exit v27

    const/16 v18, 0x0

    const/16 v22, 0x0

    const-wide/16 v20, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string/jumbo v27, "TOTAL_SCAN_COUNT"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string/jumbo v27, "SCAN_RESULT_COUNT"

    const-wide/16 v28, 0x0

    invoke-interface/range {v26 .. v29}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_a

    move-result-wide v20

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_b

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_13
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const-string/jumbo v26, "TOTAL_SCAN_COUNT"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_13

    const-string/jumbo v26, "SCAN_RESULT_COUNT"

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_13

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_c

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    const/high16 v27, 0x42c80000    # 100.0f

    mul-float v18, v26, v27

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_14

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[BIGDATA] LESI reportData() scanType: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", count: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ", rate: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/bt/data/BluetoothDataManager;->updateLeScanInfo(Ljava/lang/String;F)V

    goto/16 :goto_7

    :catch_a
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    return-void

    :catch_b
    move-exception v8

    return-void

    :catch_c
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    return-void

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyLeScanInfo(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLesiPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLeccPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    const-string/jumbo v27, "GATT_MAX_CONNECTION_COUNT"

    const/16 v28, 0x0

    invoke-interface/range {v26 .. v28}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_d

    move-result v23

    sget-boolean v26, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v26, :cond_16

    const-string/jumbo v26, "BtGatt.GattService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "[BIGDATA] LECC reportData() count : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v22, :cond_17

    if-eqz v23, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLeConnCountLog(I)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mLeccPref:Landroid/content/SharedPreferences;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_d
    move-exception v7

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    return-void
.end method

.method private reportData4Battery()V
    .locals 12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v9, "com.sec.android.action.RESOURCE_BLE_USAGE_RESPONSE"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    const/4 v10, 0x0

    invoke-interface {v9, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-boolean v9, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BtGatt.GattService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[GSIM LOG]: reportData4Battery: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_1
    new-instance v9, Ljava/lang/Long;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "BLE_USAGE"

    invoke-virtual {v5, v9, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    invoke-virtual {v9, v5, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mLesc4BatteryPref:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private reportLEAbuseConn()V
    .locals 12

    const/4 v7, 0x0

    const-string/jumbo v6, ""

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v9}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getRegisteredMap()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v9}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getRegisteredMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->increaseInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-boolean v9, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BtGatt.GattService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BIGDATA] reportLEAbuseConn() callingApp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", ifNum: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-le v2, v7, :cond_4

    move v7, v2

    move-object v6, v1

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v9, v7, v6}, Lcom/samsung/bt/data/BluetoothDataManager;->notifyLeAbuseConnInfo(ILjava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/bluetooth/gatt/GattService;->updateLeacReportedApp(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private reportLEAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mDataManager:Lcom/samsung/bt/data/BluetoothDataManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/bt/data/BluetoothDataManager;->insertLeAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reverse([B)V
    .locals 4

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    div-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_0

    aget-byte v0, p1, v1

    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    aput-byte v3, p1, v1

    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v1

    aput-byte v0, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private saveLogPref()V
    .locals 18

    sget-boolean v11, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "BtGatt.GattService"

    const-string/jumbo v12, "[GSIM LOG]: saveLogPref"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v14, v2, v8

    const-wide/16 v16, 0x3c

    div-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->updateScanTime(Ljava/lang/String;J)Z

    :goto_1
    sget-boolean v11, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v11, :cond_1

    const-string/jumbo v11, "BtGatt.GattService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[GSIM LOG]: LST: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " : time - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12

    throw v11
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    const-string/jumbo v11, "BtGatt.GattService"

    const-string/jumbo v12, "stop() called before start() returns"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    const-wide/16 v8, 0x0

    :try_start_3
    const-string/jumbo v11, "BtGatt.GattService"

    const-string/jumbo v13, "saveLogPref: LST : process not found prevTime is 0"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_4
    monitor-exit v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    monitor-enter v12
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v14, v2, v8

    const-wide/16 v16, 0x3c

    div-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14, v15}, Lcom/android/bluetooth/gatt/GattService;->updateAdvTime(Ljava/lang/String;J)Z

    :goto_4
    sget-boolean v11, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v11, :cond_4

    const-string/jumbo v11, "BtGatt.GattService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[GSIM LOG]: LAT:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " : time - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v11

    :try_start_6
    monitor-exit v12

    throw v11
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_5
    const-wide/16 v8, 0x0

    :try_start_7
    const-string/jumbo v11, "BtGatt.GattService"

    const-string/jumbo v13, "saveLogPref: LAT : process not found prevTime is 0"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :cond_6
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2
.end method

.method private setActualScanType(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_ACTUAL_DB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAdvTime(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setAdvType(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_REQUESTED_DB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_IF_DB:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static declared-synchronized setGattService(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 4

    const-class v1, Lcom/android/bluetooth/gatt/GattService;

    monitor-enter v1

    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGattService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v2, "setGattService(): service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setRequestedScanType(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_REQUESTED_DB:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_IF_DB:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setScanTime(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private stopNextService(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopNextService() - serverIf="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v3, p1, :cond_0

    iget-boolean v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerStopServiceNative(II)V

    return-void

    :cond_1
    return-void
.end method

.method private updateAdvTime(Ljava/lang/String;J)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    invoke-interface {v5, p1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    add-long v6, v2, p2

    invoke-interface {v4, p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private updateAdvTimeFromHashmap(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 12

    const-wide/16 v0, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-interface {p2, p1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/bluetooth/gatt/GattService;->BLE_ADV_TIME_MAP:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v8

    sub-long v6, v8, v4

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-long v8, v0, v6

    const-wide/16 v10, 0x3c

    div-long/2addr v8, v10

    invoke-interface {v2, p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :catch_0
    move-exception v3

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    const-string/jumbo v8, "BtGatt.GattService"

    const-string/jumbo v9, "updateAdvTimeFromHashmap: prevTime is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateConnectionCount()V
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v5}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLeccPref:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "GATT_MAX_CONNECTION_COUNT"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    if-le v0, v4, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mLeccPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v5, "GATT_MAX_CONNECTION_COUNT"

    invoke-interface {v3, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    sget-boolean v5, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "BtGatt.GattService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BIGDATA] updateConnectionCount() connCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private updateLeacReportedApp(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLeacReportedApp, appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateScanTime(Ljava/lang/String;J)Z
    .locals 14

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v10, 0xb

    invoke-direct {p0, v10, p1}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    const-string/jumbo v10, "BtGatt.GattService"

    const-string/jumbo v11, "updateScanTime: null process name, So don\'t update Scan time"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    const-wide/16 v12, 0x0

    invoke-interface {v10, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v10, p0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    const-wide/16 v12, 0x0

    invoke-interface {v10, v7, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    iget-object v10, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    add-long v10, v2, p2

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v10, p0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    add-long v10, v0, p2

    invoke-interface {v5, v7, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v10, 0x1

    return v10

    :catch_0
    move-exception v4

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0
.end method

.method private updateScanTimeFromHashmap(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 16

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    const/16 v7, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_0

    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateScanTimeFromHashmap: abnormal process name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v6

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    goto :goto_0

    :cond_0
    const/16 v7, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    move-object/from16 v0, p2

    if-ne v0, v7, :cond_1

    const/16 v7, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/gatt/GattService;->mLstaPref:Landroid/content/SharedPreferences;

    move-object/from16 v0, p2

    if-ne v0, v7, :cond_2

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/bluetooth/gatt/GattService;->BLE_SCAN_TIME_MAP:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->getCurrTime()J

    move-result-wide v12

    sub-long v10, v12, v8

    invoke-interface/range {p2 .. p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    add-long v12, v4, v10

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    const-wide/16 v8, 0x0

    const-string/jumbo v7, "BtGatt.GattService"

    const-string/jumbo v12, "updateScanTimeFromHashmap: callingApp not found prevTime is 0"

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method CreateonTrackAdvFoundLostObject(II[BI[BIIILjava/lang/String;IIII)Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
    .locals 14

    new-instance v0, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;-><init>(II[BI[BIIILjava/lang/String;IIII)V

    return-object v0
.end method

.method GetSampleGattDbElement()Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    return-object v0
.end method

.method addCharacteristic(ILjava/util/UUID;II)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCharacteristic() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addCharacteristic(Ljava/util/UUID;II)V

    return-void
.end method

.method addDescriptor(ILjava/util/UUID;I)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addDescriptor() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addDescriptor(Ljava/util/UUID;I)V

    return-void
.end method

.method addIncludedService(IIILjava/util/UUID;)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addIncludedService() - uuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addIncludedService(Ljava/util/UUID;II)V

    return-void
.end method

.method addScanEvent(Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addScanResult()V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getNumberResults()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setNumberResults(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    return-void
.end method

.method beginReliableWrite(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginReliableWrite() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method beginServiceDeclaration(IIIILjava/util/UUID;Z)V
    .locals 6

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "beginServiceDeclaration() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->addDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v0

    move-object v1, p5

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ServiceDeclaration;->addService(Ljava/util/UUID;IIIZ)V

    return-void
.end method

.method protected cleanup()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "cleanup binder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->cleanupNative()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    :cond_4
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->clearGattService()V

    const/4 v0, 0x1

    return v0
.end method

.method clearServices(I)V
    .locals 2

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    return-void
.end method

.method clientConnect(ILjava/lang/String;ZIZI)V
    .locals 5

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCallingProcessName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clientConnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") - address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isDirect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " transport ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " set own addr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " own addr type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clientIf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BtGatt.GattServiceclientConnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") - address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isDirect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " transport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " set own addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " own addr type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", clientIf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v2, :cond_0

    move-object v1, p2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[1001]{0001}(07::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")(03::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")(15::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")(1B::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")(1C::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectNative(ILjava/lang/String;ZIZI)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":XX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method clientConnectionParameterUpdate(ILjava/lang/String;IIIIII)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientConnectionParameterUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "latancy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p8}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V

    return-void
.end method

.method clientDataRateUpdate(ILjava/lang/String;II)V
    .locals 9

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7d0

    packed-switch p4, :pswitch_data_0

    :goto_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientDataRateUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CE_LENGTH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V

    return-void

    :pswitch_0
    mul-int/lit8 v0, p3, 0x3c

    div-int/lit8 v7, v0, 0x64

    move v8, v7

    goto :goto_0

    :pswitch_1
    move v7, p3

    move v8, p3

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v7, p3, 0x2

    move v8, v7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method clientDisconnect(ILjava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getCallingProcessName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clientDisconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") - address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clientIf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BtGatt.GattServiceclientDisconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") - address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/bluetooth/gatt/GattService;->gattClientDisconnectNative(ILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method configureMTU(ILjava/lang/String;I)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureMTU() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientConfigureMTUNative(II)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureMTU() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 7

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x18

    const/16 v4, 0x28

    const/4 v5, 0x0

    const/16 v6, 0x7d0

    packed-switch p3, :pswitch_data_0

    :goto_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connectionParameterUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/GattService;->gattConnectionParameterUpdateNative(ILjava/lang/String;IIII)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method disconnectAll()V
    .locals 6

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "disconnectAll()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnecting addr:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method discoverServices(ILjava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServices() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    move-object v1, p0

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/gatt/GattService;->gattClientSearchServiceNative(IZJJ)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServices() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    const-string/jumbo v4, "mAdvertisingServiceUuids:"

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ServiceDeclaration;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->dumpScanNAdvData(Ljava/lang/StringBuilder;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMaxScanFilters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/bluetooth/gatt/GattService;->mMaxScanFilters:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const-string/jumbo v4, "\nGATT ScanFilters\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/ScanManager;->dump(Ljava/lang/StringBuilder;)V

    const-string/jumbo v4, "\nGATT Client Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->dump(Ljava/lang/StringBuilder;)V

    const-string/jumbo v4, "GATT Server Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->dump(Ljava/lang/StringBuilder;)V

    const-string/jumbo v4, "GATT Handle Map\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/HandleMap;->dump(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public dumpAdvData2Permenent()V
    .locals 10

    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string/jumbo v6, "BtGatt.GattService[Application @ adv type]=[cumulated time]"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mLatrPref:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v6, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BtGatt.GattServiceLATR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dumpProto(Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;)V
    .locals 4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;->addScanEvent(Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method public dumpScanData2Permenent()V
    .locals 10

    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v6, "BtGatt.GattService[Application @ scan type]=[cumulated time]"

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/bluetooth/gatt/GattService;->mLstrPref:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v6, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BtGatt.GattServiceLSTR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->clearAllPrefs()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BtGatt.GattServiceCurrScan: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanApplication:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", window/interval : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanWindow:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method endReliableWrite(ILjava/lang/String;Z)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endReliableWrite() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientExecuteWriteNative(IZ)V

    :cond_0
    return-void
.end method

.method endServiceDeclaration(I)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "endServiceDeclaration()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getActiveDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->getPendingDeclaration()Lcom/android/bluetooth/gatt/ServiceDeclaration;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->continueServiceDeclaration(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public failStartAdv(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public failStartScan(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method flushPendingBatchResults(IZ)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flushPendingBatchResults - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isServer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1, p2}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method gattTestCommand(ILjava/util/UUID;Ljava/lang/String;[B[SIIIII)V
    .locals 14

    if-nez p3, :cond_0

    const-string/jumbo p3, "00:00:00:00:00:00"

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;[B[SIIIII)V

    :goto_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;[B[SIIIII)V

    goto :goto_0
.end method

.method getClientAppNameById(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v13, "android.permission.BLUETOOTH"

    const-string/jumbo v14, "Need BLUETOOTH permission"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/bluetooth/gatt/GattService;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v13}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v13, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    array-length v15, v0

    move v14, v13

    :goto_2
    if-ge v14, v15, :cond_4

    aget v12, p1, v14

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v12, :cond_5

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_2

    :cond_6
    return-object v8
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "BtGatt.GattService"

    return-object v0
.end method

.method declared-synchronized getRegisteredServiceUuids()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v3, v3, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v3, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    monitor-exit p0

    return-object v2
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    new-instance v0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    return-object v0
.end method

.method monitorRssi(ILjava/lang/String;III)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "monitorRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/gatt/GattService;->gattClientMonitorRssiNative(ILjava/lang/String;III)V

    return-void
.end method

.method numHwTrackFiltersAvailable()I
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "numHwTrackFiltersAvailable() - AdapterService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrentUsedTrackingAdvertisement()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method onAdvertiseCallback(II)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseCallback,- clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    return-void
.end method

.method onAdvertiseDataSet(II)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseDataSet() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    return-void
.end method

.method onAdvertiseDataUpdated(II)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseDataUpdated() - client_if="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onAdvertiseInstanceDisabled(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdvertiseInstanceDisabled() - clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "Client app is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v6, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v1, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    goto :goto_0
.end method

.method onAdvertiseInstanceEnabled(II)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdvertiseInstanceEnabled() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->callbackDone(II)V

    return-void
.end method

.method onAttributeRead(Ljava/lang/String;IIIIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v15

    if-nez v15, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v13

    if-nez v13, :cond_1

    return-void

    :cond_1
    iget v2, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "onAttributeRead() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v11}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v14

    iget-object v2, v13, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v16

    iget v8, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v9, Landroid/os/ParcelUuid;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v9, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget v10, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    iget-object v3, v14, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v12, Landroid/os/ParcelUuid;

    iget-object v3, v15, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v12, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v2 .. v12}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onAttributeWrite(Ljava/lang/String;IIIIIZZ[B)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v18

    if-nez v18, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v16

    if-nez v16, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "onAttributeWrite() - Requested unknown attribute type."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v14, p9

    invoke-interface/range {v2 .. v14}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;[B)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->charHandle:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serviceType:I

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v11, Landroid/os/ParcelUuid;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v11, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->instance:I

    new-instance v13, Landroid/os/ParcelUuid;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v13, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v14, Landroid/os/ParcelUuid;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v14, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p7

    move-object/from16 v15, p9

    invoke-interface/range {v2 .. v15}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZIILandroid/os/ParcelUuid;ILandroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method onAutoConnectionStatusCb(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAutoConnectionStatusCb() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onAutoConnectionStatusCb(I)V

    :cond_0
    return-void
.end method

.method onBatchScanReports(IIII[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onBatchScanReports() - clientIf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", reportType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", numRecords="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    invoke-direct {p0, p4, p3, p5}, Lcom/android/bluetooth/gatt/GattService;->parseBatchScanResults(II[B)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p3, v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onBatchScanResults(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getFullBatchScanQueue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/gatt/GattService;->deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V

    goto :goto_0
.end method

.method onBatchScanStartStopped(III)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchScanStartStopped() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", startStopAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    return-void
.end method

.method onBatchScanStorageConfigured(II)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchScanStorageConfigured() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    return-void
.end method

.method onBatchScanThresholdCrossed(I)V
    .locals 4

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBatchScanThresholdCrossed() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(IZ)V

    return-void
.end method

.method onCharacteristicAdded(IIJJII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    const-string/jumbo v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCharacteristicAdded() UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", srvcHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", charHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p2, p8, v2, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addCharacteristic(IILjava/util/UUID;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "serverIf"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "srvcHandle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onClientCongestion(IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v3, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget v4, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    iget v5, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->handle:I

    invoke-interface {v2, v3, v4, v5}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method onClientConnParamsChanged(ILjava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientConnParamsChanged() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnParamsChanged(Ljava/lang/String;II)V

    return-void
.end method

.method onClientConnected(Ljava/lang/String;ZII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClientConnected() serverIf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addConnection(IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->updateConnectionCount()V

    :goto_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p4, p2, p1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->removeConnection(II)V

    goto :goto_0
.end method

.method onClientRegistered(IIJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClientRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0xa1

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onClientRegistered() - mClientMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mServerMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->reportLEAbuseConn()V

    const/16 p1, 0x85

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(Ljava/util/UUID;)V

    goto :goto_0
.end method

.method onConfigureMTU(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConfigureMTU() address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onConfigureMTU(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method onConnected(IIILjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConnected() - clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addConnection(IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->updateConnectionCount()V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    if-nez p3, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method onDescriptorAdded(IIJJII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    const-string/jumbo v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDescriptorAdded() UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", srvcHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", descrHandle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p2, p8, v2, p7}, Lcom/android/bluetooth/gatt/HandleMap;->addDescriptor(IILjava/util/UUID;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "serverIf"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "srvcHandle"

    invoke-virtual {v0, v3, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onDisconnected(IIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->removeConnection(II)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v2, 0x0

    invoke-interface {v1, p3, p1, v2, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method onExecuteCompleted(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method onExecuteWrite(Ljava/lang/String;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExecuteWrite() connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", transId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-ne p4, v2, :cond_1

    :goto_0
    invoke-interface {v1, p1, p3, v2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method onGetGattDb(ILjava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/gatt/GattDbElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onGetGattDb() - address="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v7, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v7, :cond_1

    :cond_0
    const-string/jumbo v7, "BtGatt.GattService"

    const-string/jumbo v8, "app or callback is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/gatt/GattDbElement;

    iget v7, v5, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    packed-switch v7, :pswitch_data_0

    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got unknown element with type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " and UUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got service with UUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/bluetooth/BluetoothGattService;

    iget-object v7, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v8, v5, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    iget v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    invoke-direct {v3, v7, v8, v9}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;II)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got characteristic with UUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v7, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v8, v5, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    iget v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->properties:I

    invoke-direct {v2, v7, v8, v9, v11}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;III)V

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got descriptor with UUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v8, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-direct {v7, v8, v9, v11}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v7, "BtGatt.GattService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got included service with UUID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/bluetooth/BluetoothGattService;

    iget-object v8, v5, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v9, v5, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    iget v10, v5, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    invoke-direct {v7, v8, v9, v10}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->gattClientDatabases:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v7, v0, v4, v11}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method onIncludedServiceAdded(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onIncludedServiceAdded() status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", included="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "serverIf"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "srvcHandle"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onMonitorRssi(ILjava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMonitorRssi() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->semOnMonitorLeRssi(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method onMtuChanged(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMtuChanged() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onMtuChanged(Ljava/lang/String;I)V

    return-void
.end method

.method onMultipleAdvertiseCallback(IIZLandroid/bluetooth/le/AdvertiseSettings;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMultipleAdvertiseCallback() clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Advertise app or callback is null for clientIf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onMultiAdvertiseCallback(IZLandroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method onNotificationSent(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_2
    const/16 v2, 0x8f

    if-ne p2, v2, :cond_3

    const/4 p2, 0x0

    :cond_3
    new-instance v2, Lcom/android/bluetooth/gatt/CallbackInfo;

    invoke-direct {v2, v0, p2}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    goto :goto_0
.end method

.method onNotify(ILjava/lang/String;IZ[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "onNotify() - permission check failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p5}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;I[B)V

    :cond_1
    return-void
.end method

.method onReadCharacteristic(III[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;II[B)V

    :cond_0
    return-void
.end method

.method onReadDescriptor(III[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;II[B)V

    :cond_0
    return-void
.end method

.method onReadRemoteRssi(ILjava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadRemoteRssi() - clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method onRegisterForNotifications(IIII)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRegisterForNotifications() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", registered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", handle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onResponseSendCompleted(II)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResponseSendCompleted() handle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onScanFilterConfig(IIIII)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFilterConfig() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", filterType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", availableSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    return-void
.end method

.method onScanFilterEnableDisabled(III)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFilterEnableDisabled() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    return-void
.end method

.method onScanFilterParamsConfigured(IIII)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanFilterParamsConfigured() - clientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", availableSpace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    return-void
.end method

.method onScanManagerErrorCallback(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScanManagerErrorCallback() clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "App or callback is null for clientIf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onScanManagerErrorCallback(I)V

    return-void
.end method

.method onScanParamSetupCompleted(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScanParamSetupCompleted() status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", clientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scan app or callback is null for clientIf = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScanParamSetupCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onScanResult(Ljava/lang/String;I[B)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->parseUuids([B)Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->addScanResult()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v4, v11, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v4, v4

    if-lez v4, :cond_4

    const/4 v13, 0x0

    iget-object v5, v11, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v18, v5, v4

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/UUID;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v13, v13, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, v11, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v4, v4

    if-lt v13, v4, :cond_0

    :cond_4
    iget-boolean v4, v11, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v5, v11, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    new-instance v2, Landroid/bluetooth/le/ScanResult;

    invoke-static/range {p3 .. p3}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/bluetooth/gatt/GattService;->hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v11, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/AppScanStats;->addResult()V

    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/gatt/GattService;->increaseScanResult()V

    iget-object v4, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, v8, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "BtGatt.GattService"

    const-string/jumbo v5, "App is not found in context map, forcefully stop scan"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, v11}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v5, v11, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v4, v9, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    new-instance v10, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v10, v4}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v4, "adv_data"

    move-object/from16 v0, p3

    invoke-virtual {v10, v4, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    move-object/from16 v0, p1

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move/from16 v0, p2

    iput v0, v14, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, v9, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method onSearchCompleted(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSearchCompleted() - connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetGattDbNative(I)V

    return-void
.end method

.method onServerCongestion(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServerCongestion() - connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", congested="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    :goto_0
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    iget-object v3, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget v4, v1, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method onServerConnParamsChanged(ILjava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServerConnParamsChanged() - serverIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnParamsChanged(Ljava/lang/String;II)V

    return-void
.end method

.method onServerRegistered(IIJJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServerRegistered() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", serverIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    iput p2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    new-instance v2, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;

    invoke-direct {v2, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    :cond_0
    :goto_0
    const/16 v2, 0x80

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(Ljava/util/UUID;)V

    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    :cond_2
    return-void

    :cond_3
    const/16 v2, 0xa1

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServerRegistered() - mClientMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mServerMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->reportLEAbuseConn()V

    const/16 p1, 0x80

    goto :goto_0
.end method

.method onServiceAdded(IIIIJJI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Ljava/util/UUID;

    move-wide/from16 v0, p7

    move-wide/from16 v2, p5

    invoke-direct {v7, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceAdded() UUID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", handle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v10

    move v5, p2

    move/from16 v6, p9

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "serverIf"

    invoke-virtual {v11, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "status"

    invoke-virtual {v11, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "srvcHandle"

    move/from16 v0, p9

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v12, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v4, v12}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onServiceDeleted(III)V
    .locals 3

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDeleted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteService(II)V

    return-void
.end method

.method onServiceStarted(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceStarted() srvcHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    :cond_0
    return-void
.end method

.method onServiceStopped(III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStopped() srvcHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p2, p3, v4}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/ProfileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method onTrackAdvFoundLost(Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTrackAdvFoundLost() - clientIf= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " adv_state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAdvState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "app or callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAdvState()I

    move-result v6

    new-instance v0, Landroid/bluetooth/le/ScanResult;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getResult()[B

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getRSSIValue()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v8, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v12, v8, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v6, :cond_3

    invoke-virtual {v12}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    const/4 v11, 0x1

    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v10, Landroid/os/Message;->arg1:I

    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v6, v2, :cond_4

    invoke-virtual {v12}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    const/4 v11, 0x0

    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v10, Landroid/os/Message;->arg1:I

    iget-object v2, v7, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not reporting onlost/onfound : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " clientIf = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v8, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callbackType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method onWriteCharacteristic(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v3, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v3, v0, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;II)V

    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x8f

    if-ne p2, v3, :cond_2

    const/4 p2, 0x0

    :cond_2
    new-instance v2, Lcom/android/bluetooth/gatt/CallbackInfo;

    invoke-direct {v2, v0, p2, p3}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    goto :goto_0
.end method

.method onWriteDescriptor(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v0, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method parseTimestampNanos([B)J
    .locals 6

    invoke-static {p1}, Lcom/android/bluetooth/util/NumberUtils;->littleEndianByteArrayToInt([B)I

    move-result v2

    int-to-long v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x32

    mul-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    return-wide v2
.end method

.method permissionCheck(II)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/bluetooth/gatt/GattService;->gattClientDatabases:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v7

    if-ne p2, v7, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/GattService;->isRestrictedCharUuid(Ljava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/GattService;->isRestrictedSrvcUuid(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string/jumbo v7, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_3

    return v9

    :cond_3
    return v10

    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v7

    if-ne p2, v7, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/GattService;->isRestrictedCharUuid(Ljava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/GattService;->isRestrictedSrvcUuid(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const-string/jumbo v7, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v7}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_7

    return v9

    :cond_7
    return v10

    :cond_8
    return v10
.end method

.method readCharacteristic(ILjava/lang/String;II)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readCharacteristic() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "readCharacteristic() - permission check failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadCharacteristicNative(III)V

    return-void
.end method

.method readDescriptor(ILjava/lang/String;II)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readDescriptor() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "readDescriptor() - permission check failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadDescriptorNative(III)V

    return-void
.end method

.method readRemoteRssi(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readRemoteRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    return-void
.end method

.method refreshDevice(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshDevice() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRefreshNative(ILjava/lang/String;)V

    return-void
.end method

.method registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 4

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerClient() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->add(Ljava/util/UUID;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)V

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterAppNative(JJ)V

    return-void
.end method

.method registerForNotification(ILjava/lang/String;IZ)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForNotification() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForNotification() - No connection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BtGatt.GattService"

    const-string/jumbo v2, "registerForNotification() - permission check failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterForNotificationsNative(ILjava/lang/String;IZ)V

    return-void
.end method

.method registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 4

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerServer() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->add(Ljava/util/UUID;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)V

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->gattServerRegisterAppNative(JJ)V

    return-void
.end method

.method removeService(IIILjava/util/UUID;)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeService() - uuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    return-void
.end method

.method semMonitorRssi(ILjava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semMonitorRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    return-void
.end method

.method semMonitorRssi(ILjava/lang/String;III)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semMonitorRssi() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rssi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/gatt/GattService;->gattClientMonitorRssiNative(ILjava/lang/String;III)V

    return-void
.end method

.method sendNotification(ILjava/lang/String;IILjava/util/UUID;ILjava/util/UUID;Z[B)V
    .locals 5

    const-string/jumbo v3, "android.permission.BLUETOOTH"

    const-string/jumbo v4, "Need BLUETOOTH permission"

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, p5, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getServiceHandle(Ljava/util/UUID;II)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3, v2, p7, p6}, Lcom/android/bluetooth/gatt/HandleMap;->getCharacteristicHandle(ILjava/util/UUID;I)I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p8, :cond_3

    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendIndicationNative(III[B)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, p1, v0, v1, p9}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendNotificationNative(III[B)V

    goto :goto_0
.end method

.method sendResponse(ILjava/lang/String;III[B)V
    .locals 10

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v5, v9, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-byte v4, p4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendResponseNative(IIIIII[BI)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteRequest(I)V

    return-void
.end method

.method serverConnect(ILjava/lang/String;ZI)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serverConnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", serverIf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectNative(ILjava/lang/String;ZI)V

    return-void
.end method

.method serverConnectionParameterUpdate(ILjava/lang/String;IIIIII)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serverConnectionParameterUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "latancy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p8}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V

    return-void
.end method

.method serverDataRateUpdate(ILjava/lang/String;II)V
    .locals 9

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7d0

    packed-switch p4, :pswitch_data_0

    :goto_0
    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serverConnectionParameterCeDutyUpdate() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " CE_LENGTH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V

    return-void

    :pswitch_0
    mul-int/lit8 v0, p3, 0x3c

    div-int/lit8 v7, v0, 0x64

    move v8, v7

    goto :goto_0

    :pswitch_1
    move v7, p3

    move v8, p3

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v7, p3, 0x2

    move v8, v7

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method serverDisconnect(ILjava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "android.permission.BLUETOOTH"

    const-string/jumbo v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serverDisconnect() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectNative(ILjava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public serverDisconnectIncomingConnClients()V
    .locals 2

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "serverDisconnectIncomingConnClients()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectIncomingConnClientsNative()V

    return-void
.end method

.method protected setRegularScanTimeout(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 7

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->getScanProcessName(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v4, Lcom/android/bluetooth/gatt/GattService;->PDBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRegularScanTimeout, appIf: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", appName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput v0, v3, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "CALLING_PROCESS"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected start()Z
    .locals 5

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "start()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-nez v3, :cond_0

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "reinit binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->initializeNative()V

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v3, Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/bluetooth/gatt/AdvertiseManager;-><init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/AdvertiseManager;->start()V

    new-instance v3, Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/gatt/ScanManager;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ScanManager;->start()V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->loadLogPref()V

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "BluetoothGattServiceLogging"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;-><init>(Lcom/android/bluetooth/gatt/GattService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "BluetoothGattService"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;-><init>(Lcom/android/bluetooth/gatt/GattService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mGattSrvHandler:Lcom/android/bluetooth/gatt/GattService$gattSrvHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.sec.android.action.RESOURCE_BLE_USAGE_REQUEST"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.downloadable.BluetoothDownloadableDatabase.action.DOWNLOADABLE_DB_BLE_UPDATE_INTENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/bluetooth/gatt/GattService;->setGattService(Lcom/android/bluetooth/gatt/GattService;)V

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getDownloadableDbObject()Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mDownloadableDatabase:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->refreshAbusiveScanPackages()V

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->refreshAbusiveScanValue()V

    const/4 v3, 0x1

    return v3
.end method

.method startMultiAdvertising(ILandroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p4}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->arg1:I

    iput p1, v2, Landroid/os/Message;->arg2:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "CALLING_PROCESS"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v4, Lcom/android/bluetooth/gatt/AdvertiseClient;

    invoke-direct {v4, p1, p4, p2, p3}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(ILandroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/AdvertiseManager;->startAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    return-void
.end method

.method startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v3, "BtGatt.GattService"

    const-string/jumbo v4, "start scan with filters"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    :cond_0
    if-eqz p5, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceImpersonatationPermission()V

    :goto_0
    move-object/from16 v0, p7

    invoke-direct {p0, v0, p3}, Lcom/android/bluetooth/gatt/GattService;->getScanSettingsForAbuseScanApp(Ljava/lang/String;Landroid/bluetooth/le/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p3

    move-object/from16 v0, p7

    invoke-direct {p0, v0, p3}, Lcom/android/bluetooth/gatt/GattService;->getScanSettings(Ljava/lang/String;Landroid/bluetooth/le/ScanSettings;)Landroid/bluetooth/le/ScanSettings;

    move-result-object p3

    new-instance v2, Lcom/android/bluetooth/gatt/ScanClient;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p7

    invoke-static {p0, v3, v0}, Lcom/android/bluetooth/Utils;->checkCallerHasLocationPermission(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasPeersMacAddressPermission(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/bluetooth/gatt/ScanClient;->hasPeersMacAddressPermission:Z

    move-object/from16 v0, p7

    invoke-static {p0, v0}, Lcom/android/bluetooth/Utils;->isLegacyForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/bluetooth/gatt/ScanClient;->legacyForegroundApp:Z

    const/4 v9, 0x0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/bluetooth/gatt/AppScanStats;->isScanningTooFrequently()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "BtGatt.GattService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "App \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v9, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' is scanning too frequently"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p5, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {v0, v3, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v9

    goto :goto_1

    :cond_3
    iput-object v9, v2, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-virtual {v9, p3}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanStart(Landroid/bluetooth/le/ScanSettings;)V

    :cond_4
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    iput v3, v11, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->getActualScanMode(Landroid/bluetooth/le/ScanSettings;)I

    move-result v3

    iput v3, v11, Landroid/os/Message;->arg2:I

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v9, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanApplication:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->getRequestedScanWindow(Landroid/bluetooth/le/ScanSettings;)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanWindow:I

    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->getRequestedScanInterval(Landroid/bluetooth/le/ScanSettings;)I

    move-result v3

    iput v3, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanInterval:I

    const-string/jumbo v3, "CALLING_PROCESS"

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mCurrScanApplication:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "APP_IF"

    int-to-short v4, p1

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    const-string/jumbo v3, "REQ_SCAN_TYPE"

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->getRequestedScanType(Lcom/android/bluetooth/gatt/ScanClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "IS_BACKGROUND"

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->isBackGroundApp(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v11, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v3, v11}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/gatt/ScanManager;->startScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method protected stop()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->saveLogPref()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "cleanup binder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    invoke-interface {v0}, Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;->cleanup()Z

    iput-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mBinder:Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/HandleMap;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServiceDeclarations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAbusiveScanPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mLeacReportedApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->clearGattService()V

    const/4 v0, 0x1

    return v0
.end method

.method stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    iput v0, v3, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppNameById(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v4, "CALLING_PROCESS"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    return-void
.end method

.method stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v5}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    add-int v2, v4, v5

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopScan() - queue size ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-boolean v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->isServer:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanStop()V

    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "CALLING_PROCESS"

    iget-object v5, v0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/GattService;->getSubProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mLogHandler:Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/gatt/GattService$gsimLogHandler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v4, "BtGatt.GattService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopScan() - queue size ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v0

    goto :goto_0
.end method

.method unregAll()V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/GattService$ClientMap;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ContextMap$App;

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->removeLeacReportedClientApp(I)V

    iget v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method unregisterClient(I)V
    .locals 5

    const-string/jumbo v2, "android.permission.BLUETOOTH"

    const-string/jumbo v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterClient() - clientIf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectionByApp(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientUnregisterAppNative(I)V

    return-void

    :cond_1
    const-string/jumbo v2, "BtGatt.GattService"

    const-string/jumbo v3, "Clearing Client map"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->removeConnection(II)V

    goto :goto_0
.end method

.method unregisterClientbyUuid(Ljava/util/UUID;)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterClientbyUuid() - UUID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(Ljava/util/UUID;)V

    return-void
.end method

.method unregisterServer(I)V
    .locals 3

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterServer() - serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattServerUnregisterAppNative(I)V

    return-void
.end method

.method writeCharacteristic(ILjava/lang/String;III[B)V
    .locals 7

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p4, 0x3

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeCharacteristic() - No connection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "writeCharacteristic() - permission check failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteCharacteristicNative(IIII[B)V

    return-void
.end method

.method writeDescriptor(ILjava/lang/String;III[B)V
    .locals 7

    const-string/jumbo v0, "android.permission.BLUETOOTH"

    const-string/jumbo v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "BtGatt.GattService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeDescriptor() - No connection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "BtGatt.GattService"

    const-string/jumbo v1, "writeDescriptor() - permission check failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteDescriptorNative(IIII[B)V

    return-void
.end method
