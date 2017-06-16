.class Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field final synthetic val$delLayout:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;->val$delLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x1

    const v1, 0x3f4ccccd    # 0.8f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    # setter for: Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteLongClicked:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->access$102(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;->val$delLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;->val$delLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->runDeleteAnimLongPress(Landroid/view/View;)V

    return v2
.end method
