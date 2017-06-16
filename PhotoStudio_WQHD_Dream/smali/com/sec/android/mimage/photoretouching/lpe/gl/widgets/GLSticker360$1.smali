.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;
.super Ljava/lang/Object;
.source "GLSticker360.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$BitmapReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->drawNormal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimensions()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterX:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mCenterY:F

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mWidth:F

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mHeight:F

    aput v2, v0, v1

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->access$002(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
