.class public Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;
.super Ljava/lang/Object;
.source "MotionEventWrapper.java"


# static fields
.field public static final ACTION_PEN_CANCEL:I

.field public static final ACTION_PEN_DOWN:I

.field public static final ACTION_PEN_MOVE:I

.field public static final ACTION_PEN_UP:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xd6

    const/16 v3, 0xd5

    const/16 v2, 0xd4

    const/16 v1, 0xd3

    invoke-static {}, Lcom/samsung/android/spen/libwrapper/utils/PlatformUtils;->isSemDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    sput v3, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_MOVE:I

    sput v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_UP:I

    sput v4, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_CANCEL:I

    :goto_0
    return-void

    :cond_0
    sput v1, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_DOWN:I

    sput v3, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_MOVE:I

    sput v2, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_UP:I

    sput v4, Lcom/samsung/android/spen/libwrapper/MotionEventWrapper;->ACTION_PEN_CANCEL:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
