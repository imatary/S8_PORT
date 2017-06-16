.class public Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;
.super Ljava/lang/Object;
.source "SdlHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gravity"
.end annotation


# static fields
.field public static BOTTOM:I

.field public static CENTER_VERTICAL:I

.field public static LEFT:I

.field public static RIGHT:I

.field public static TOP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x50

    sput v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->BOTTOM:I

    const/16 v0, 0x10

    sput v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->CENTER_VERTICAL:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->LEFT:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->RIGHT:I

    const/16 v0, 0x30

    sput v0, Lcom/samsung/android/spen/libsdl/SdlHoverPopupWindow$Gravity;->TOP:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
