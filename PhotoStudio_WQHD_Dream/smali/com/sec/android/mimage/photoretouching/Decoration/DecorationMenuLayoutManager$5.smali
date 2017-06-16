.class Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$5;
.super Ljava/lang/Object;
.source "DecorationMenuLayoutManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x17

    if-eq p2, v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager$5;->this$0:Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/Decoration/DecorationMenuLayoutManager;->mDecorationMenuViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
