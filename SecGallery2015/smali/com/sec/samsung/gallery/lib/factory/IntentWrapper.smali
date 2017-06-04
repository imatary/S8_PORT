.class public Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;
.super Ljava/lang/Object;
.source "IntentWrapper.java"


# static fields
.field private static final ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

.field public static final ACTION_PALM_DOWN:Ljava/lang/String;

.field public static final EXTRA_SMART_DOCK_STATE:Ljava/lang/String;

.field public static final EXTRA_SMART_DOCK_STATE_DOCKED:I

.field public static final EXTRA_SMART_DOCK_STATE_UNDOCKED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "none"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    const-string/jumbo v0, "com.sec.intent.extra.SMART_DOCK_STATE"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE_DOCKED:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->EXTRA_SMART_DOCK_STATE_UNDOCKED:I

    const-string/jumbo v0, "com.samsung.android.motion.PALM_DOWN"

    sput-object v0, Lcom/sec/samsung/gallery/lib/factory/IntentWrapper;->ACTION_PALM_DOWN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
