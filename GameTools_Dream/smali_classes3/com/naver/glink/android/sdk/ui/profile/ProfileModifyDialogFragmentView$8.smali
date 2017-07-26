.class Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;
.super Lcom/naver/glink/android/sdk/api/request/RequestListener;
.source "ProfileModifyDialogFragmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/naver/glink/android/sdk/api/request/RequestListener",
        "<",
        "Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;


# direct methods
.method constructor <init>(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    iput-object p2, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/naver/glink/android/sdk/api/request/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->a(Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;Lcom/android/volley/VolleyError;)V
    .locals 3

    iget-object v0, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v0}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->b:Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;

    invoke-virtual {v1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/naver/glink/android/sdk/R$string;->image_upload_fail_message:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/naver/glink/android/sdk/ui/AlertDialogFragmentView;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onFailure(Lcom/naver/glink/android/sdk/api/Response;Lcom/android/volley/VolleyError;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;

    invoke-virtual {p0, p1, p2}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->a(Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/naver/glink/android/sdk/api/Response;)V
    .locals 0

    check-cast p1, Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;

    invoke-virtual {p0, p1}, Lcom/naver/glink/android/sdk/ui/profile/ProfileModifyDialogFragmentView$8;->a(Lcom/naver/glink/android/sdk/api/GResponses$AttachImageResponse;)V

    return-void
.end method
