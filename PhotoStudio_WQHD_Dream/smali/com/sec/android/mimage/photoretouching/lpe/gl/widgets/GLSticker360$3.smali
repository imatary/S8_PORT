.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;
.super Ljava/lang/Object;
.source "GLSticker360.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->clear()V
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

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "nayab"

    const-string v1, "clear GLSticker360"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iget v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewTextureId:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mPreviewTextureId:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360$3;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSticker360;->mLoaded:Z

    return-void
.end method
