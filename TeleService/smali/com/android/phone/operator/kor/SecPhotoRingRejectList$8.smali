.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;
.super Ljava/lang/Object;
.source "SecPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->initializeAddButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->checkErrorText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->clickSaveBtn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$8;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-virtual {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->clickSearchContactBtn()V

    goto :goto_0
.end method
