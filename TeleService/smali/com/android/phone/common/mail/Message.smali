.class public abstract Lcom/android/phone/common/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/android/phone/common/mail/Part;
.implements Lcom/android/phone/common/mail/Body;


# static fields
.field public static final EMPTY_ARRAY:[Lcom/android/phone/common/mail/Message;


# instance fields
.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mInternalDate:Ljava/util/Date;

.field protected mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/phone/common/mail/Message;

    sput-object v0, Lcom/android/phone/common/mail/Message;->EMPTY_ARRAY:[Lcom/android/phone/common/mail/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/common/mail/Message;->mFlags:Ljava/util/HashSet;

    return-void
.end method

.method private getFlagSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/Message;->mFlags:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/Message;->mFlags:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/Message;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method

.method private final setFlagDirectlyForTest(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/common/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/common/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getFlags()[Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/common/mail/Message;->getFlagSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/android/phone/common/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public setFlag(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/mail/Message;->setFlagDirectlyForTest(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/mail/Message;->mInternalDate:Ljava/util/Date;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/common/mail/Message;->mUid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/common/mail/Message;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/common/mail/Message;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
