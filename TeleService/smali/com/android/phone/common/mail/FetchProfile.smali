.class public Lcom/android/phone/common/mail/FetchProfile;
.super Ljava/util/ArrayList;
.source "FetchProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/FetchProfile$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/phone/common/mail/Fetchable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstPart()Lcom/android/phone/common/mail/Part;
    .locals 3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/Fetchable;

    instance-of v2, v0, Lcom/android/phone/common/mail/Part;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/phone/common/mail/Part;

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
