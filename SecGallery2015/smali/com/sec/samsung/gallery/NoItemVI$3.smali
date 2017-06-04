.class Lcom/sec/samsung/gallery/NoItemVI$3;
.super Ljava/lang/Object;
.source "NoItemVI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/NoItemVI;->hideNoItemVI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/NoItemVI;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/NoItemVI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/NoItemVI$3;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/NoItemVI$3;->this$0:Lcom/sec/samsung/gallery/NoItemVI;

    # getter for: Lcom/sec/samsung/gallery/NoItemVI;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/NoItemVI;->access$300(Lcom/sec/samsung/gallery/NoItemVI;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f1200c6

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
