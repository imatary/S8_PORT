.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;
.super Ljava/lang/Object;
.source "GLEffectThumbsLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->getNext()I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mThumbs:[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->access$100(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)[Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;

    move-result-object v0

    aget-object v7, v0, v8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbData:[I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbWidth:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->thumbHeight:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I

    move-result v2

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mLayerId:I
    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/IconData;->getThumbnail([IIIIILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v7, v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectThumbsLayout;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_1
    return-void
.end method
