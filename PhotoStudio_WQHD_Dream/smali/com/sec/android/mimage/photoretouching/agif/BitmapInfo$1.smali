.class Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;
.super Ljava/lang/Object;
.source "BitmapInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setBitmap(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->access$000(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mOrgBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v3, v3, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v6, v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v7, v4, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->access$000(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/util/FileHandler;->delete(I)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    # getter for: Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mFileHandler:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->access$000(Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/util/FileHandler;->update([II)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->recycleBitmap()V

    const-string v0, "PEDIT_BitmapInfo"

    const-string v3, "write original data(%dx%d) to file: %d : %d ms"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->this$0:Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    iget v5, v5, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mImageHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo$1;->val$pos:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "PEDIT_BitmapInfo"

    const-string v2, "mFileHandler = -1"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
