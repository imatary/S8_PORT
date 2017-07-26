.class Lcom/naver/glink/android/sdk/ui/record/d$1;
.super Ljava/lang/Object;
.source "RecordSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/record/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioGroup;

.field final synthetic b:Landroid/widget/RadioGroup;

.field final synthetic c:Lcom/naver/glink/android/sdk/ui/record/d;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/record/d;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->a:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->b:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    sget v3, Lcom/naver/glink/android/sdk/R$string;->record_permission_error:I

    invoke-virtual {v2, v3}, Lcom/naver/glink/android/sdk/ui/record/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9a

    invoke-static {v0, v1, v2, v3}, Lcom/naver/glink/android/sdk/ui/write/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/d;->dismiss()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-static {v0}, Lcom/naver/glink/android/sdk/ui/record/d;->a(Lcom/naver/glink/android/sdk/ui/record/d;)Lcom/naver/glink/android/sdk/ui/record/d$a;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/naver/glink/android/sdk/ui/record/c;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->a:Landroid/widget/RadioGroup;

    invoke-static {v1, v2}, Lcom/naver/glink/android/sdk/ui/record/d;->a(Lcom/naver/glink/android/sdk/ui/record/d;Landroid/widget/RadioGroup;)I

    move-result v1

    iget-object v2, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    iget-object v3, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->b:Landroid/widget/RadioGroup;

    invoke-static {v2, v3}, Lcom/naver/glink/android/sdk/ui/record/d;->b(Lcom/naver/glink/android/sdk/ui/record/d;Landroid/widget/RadioGroup;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/record/c;-><init>(II)V

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-static {v1}, Lcom/naver/glink/android/sdk/ui/record/d;->a(Lcom/naver/glink/android/sdk/ui/record/d;)Lcom/naver/glink/android/sdk/ui/record/d$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/naver/glink/android/sdk/ui/record/d$a;->a(Lcom/naver/glink/android/sdk/ui/record/c;)V

    :cond_1
    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/record/d$1;->c:Lcom/naver/glink/android/sdk/ui/record/d;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/record/d;->dismiss()V

    goto :goto_0
.end method
