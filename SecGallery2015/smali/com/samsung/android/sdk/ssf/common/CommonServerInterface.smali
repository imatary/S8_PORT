.class public Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;
.super Ljava/lang/Object;
.source "CommonServerInterface.java"


# static fields
.field public static CONTENT_HEIGHT_VALUE:I

.field public static CONTENT_WIDTH_VALUE:I

.field public static PANEL_HEIGHT_VALUE:I

.field public static PANEL_WIDTH_VALUE:I

.field public static PREVIEW_HEIGHT_VALUE:I

.field public static PREVIEW_WIDTH_VALUE:I

.field public static THUMBNAIL_HEIGHT_VALUE:I

.field public static THUMBNAIL_WIDTH_VALUE:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x280

    const/16 v2, 0xf0

    const/16 v1, 0x88

    const/16 v0, 0x78

    sput v2, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->CONTENT_WIDTH_VALUE:I

    sput v2, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->CONTENT_HEIGHT_VALUE:I

    sput v1, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->PANEL_WIDTH_VALUE:I

    sput v1, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->PANEL_HEIGHT_VALUE:I

    sput v0, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->THUMBNAIL_WIDTH_VALUE:I

    sput v0, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->THUMBNAIL_HEIGHT_VALUE:I

    sput v3, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->PREVIEW_WIDTH_VALUE:I

    sput v3, Lcom/samsung/android/sdk/ssf/common/CommonServerInterface;->PREVIEW_HEIGHT_VALUE:I

    return-void
.end method
