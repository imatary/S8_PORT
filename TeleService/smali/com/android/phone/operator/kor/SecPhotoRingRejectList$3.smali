.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$3;
.super Ljava/lang/Object;
.source "SecPhotoRingRejectList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$3;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$3;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$3;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap2(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    return-void
.end method
