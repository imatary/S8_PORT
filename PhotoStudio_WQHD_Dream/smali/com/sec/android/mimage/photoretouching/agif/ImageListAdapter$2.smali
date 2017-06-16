.class Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-wide v2, v2, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->runDeleteAnim(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->deleteClickTime:J

    return-void
.end method
