.class Lcom/samsung/android/app/omcagent/db/DevicePref$POLLING_KEY;
.super Ljava/lang/Object;
.source "DevicePref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/DevicePref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "POLLING_KEY"
.end annotation


# static fields
.field private static final HOST_URL:Ljava/lang/String; = "Polling.PreUrl"

.field private static final PERIOD_KEY:Ljava/lang/String; = "Polling.Period.Day"

.field private static final PERIOD_RANGE:Ljava/lang/String; = "Polling.Period.Range"

.field private static final PERIOD_TIME:Ljava/lang/String; = "Polling.Period.Time"

.field private static final PERIOD_TYPE:Ljava/lang/String; = "Polling.Period.Unit"

.field private static final TARGET_URL:Ljava/lang/String; = "Polling.PostUrl"

.field private static final TIME:Ljava/lang/String; = "Polling.Time"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
