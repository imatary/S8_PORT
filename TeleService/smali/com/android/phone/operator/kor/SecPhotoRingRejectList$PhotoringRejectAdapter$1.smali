.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter$1;
.super Ljava/lang/Object;
.source "SecPhotoRingRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter$1;->this$1:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter$1;->val$item:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter$1;->this$1:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    iget-object v0, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    iget-object v1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter$1;->val$item:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    iget-object v1, v1, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap1(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;I)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter$1;->this$1:Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;

    iget-object v0, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectAdapter;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap3(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    return-void
.end method
