.class public abstract Lcom/android/phone/common/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/android/phone/common/mail/Body;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mParent:Lcom/android/phone/common/mail/Part;

.field protected mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/common/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/Multipart;->mParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/android/phone/common/mail/BodyPart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBodyPart(I)Lcom/android/phone/common/mail/BodyPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/BodyPart;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/Multipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setParent(Lcom/android/phone/common/mail/Part;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/common/mail/Multipart;->mParent:Lcom/android/phone/common/mail/Part;

    return-void
.end method
