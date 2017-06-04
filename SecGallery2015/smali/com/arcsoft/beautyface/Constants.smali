.class public Lcom/arcsoft/beautyface/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ANDROID_BITMAP_FORMAT_RGBA_8888:I

.field public static ANDROID_BITMAP_FORMAT_RGB_565:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/arcsoft/beautyface/Constants;->ANDROID_BITMAP_FORMAT_RGBA_8888:I

    const/4 v0, 0x4

    sput v0, Lcom/arcsoft/beautyface/Constants;->ANDROID_BITMAP_FORMAT_RGB_565:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
