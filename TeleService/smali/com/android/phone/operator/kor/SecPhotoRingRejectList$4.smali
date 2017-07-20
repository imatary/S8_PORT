.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;
.super Ljava/lang/Object;
.source "SecPhotoRingRejectList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "photoring_reject_all"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "photoring_reject_all"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$4;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v2}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap5(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    return-void
.end method
