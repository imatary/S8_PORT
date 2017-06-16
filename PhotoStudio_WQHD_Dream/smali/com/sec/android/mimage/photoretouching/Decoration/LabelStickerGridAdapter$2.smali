.class Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$2;
.super Ljava/lang/Object;
.source "LabelStickerGridAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter$2;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;

    # getter for: Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;->access$000(Lcom/sec/android/mimage/photoretouching/Decoration/LabelStickerGridAdapter;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
