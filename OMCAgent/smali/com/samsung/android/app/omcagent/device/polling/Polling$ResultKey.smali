.class public Lcom/samsung/android/app/omcagent/device/polling/Polling$ResultKey;
.super Ljava/lang/Object;
.source "Polling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/device/polling/Polling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultKey"
.end annotation


# static fields
.field public static final OMC_TEST_VERSION_EXPRESSION:Ljava/lang/String; = "versionInfo/config[@serviceType=\'OMC\']/version"

.field public static final OMC_VERSION:Ljava/lang/String; = "versionInfo/config/version"

.field public static final OMC_VERSION_EXPRESSION:Ljava/lang/String; = "versionInfo/config[@serviceType=\'OMC\']/version[@fwVersion =\'%s\'%s]"

.field public static final POLLING_PERIOD:Ljava/lang/String; = "versionInfo/polling/period"

.field public static final POLLING_RANGE:Ljava/lang/String; = "versionInfo/polling/range"

.field public static final POLLING_TARGET:Ljava/lang/String; = "versionInfo/fileName"

.field public static final POLLING_TIME:Ljava/lang/String; = "versionInfo/polling/time"

.field public static final POLLING_UNIT:Ljava/lang/String; = "versionInfo/polling/periodUnit"

.field public static final POLLING_URL:Ljava/lang/String; = "versionInfo/url"

.field public static final UPDATE_PERIOD:Ljava/lang/String; = "versionInfo/statusReport/period"

.field public static final UPDATE_RANGE:Ljava/lang/String; = "versionInfo/statusReport/range"

.field public static final UPDATE_TIME:Ljava/lang/String; = "versionInfo/statusReport/time"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
