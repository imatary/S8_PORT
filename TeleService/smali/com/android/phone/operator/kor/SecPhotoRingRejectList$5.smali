.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;
.super Ljava/lang/Object;
.source "SecPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->initLayout(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v3}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "photoring_reject_all"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v3}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get5(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/widget/Switch;

    move-result-object v3

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "photoring_reject_all"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$5;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap5(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
