.class final Lcom/sec/android/gallery3d/common/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:I

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$widthLimit:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$str:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$duration:I

    iput p4, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$widthLimit:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/common/Utils;->access$000()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$str:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$duration:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    invoke-static {}, Lcom/sec/android/gallery3d/common/Utils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/gallery3d/common/Utils$1;->val$widthLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-static {}, Lcom/sec/android/gallery3d/common/Utils;->access$100()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
