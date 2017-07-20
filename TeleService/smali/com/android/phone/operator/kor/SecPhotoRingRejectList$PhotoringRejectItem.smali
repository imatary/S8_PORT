.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;
.super Ljava/lang/Object;
.source "SecPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/SecPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoringRejectItem"
.end annotation


# instance fields
.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->id:Ljava/lang/String;

    invoke-static {}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->contact_name:Ljava/lang/String;

    return-void
.end method
