.class Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$3;
.super Ljava/lang/Object;
.source "GridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3$3;->this$1:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter$3;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/GridAdapter;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
