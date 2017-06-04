.class public Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;
.super Ljava/lang/Object;
.source "SlinkBitmapInfo.java"


# instance fields
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final requestedMaxHeight:I

.field private final requestedMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->requestedMaxWidth:I

    iput p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->requestedMaxHeight:I

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestedMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->requestedMaxHeight:I

    return v0
.end method

.method public getRequestedMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;->requestedMaxWidth:I

    return v0
.end method
