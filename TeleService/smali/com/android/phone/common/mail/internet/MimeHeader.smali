.class public Lcom/android/phone/common/mail/internet/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/mail/internet/MimeHeader$Field;
    }
.end annotation


# static fields
.field private static final WRITE_OMIT_FIELDS:[Ljava/lang/String;


# instance fields
.field protected final mFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/common/mail/internet/MimeHeader$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "X-Android-Attachment-StoreData"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/common/mail/internet/MimeHeader;->WRITE_OMIT_FIELDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    return-void
.end method

.method public static final arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final arrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const/4 v1, 0x0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/common/mail/internet/MimeHeader$Field;

    invoke-direct {v1, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader$Field;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;

    iget-object v3, v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    return-object v3

    :cond_2
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;

    iget-object v3, v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/phone/common/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/common/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iget-object v3, p0, Lcom/android/phone/common/mail/internet/MimeHeader;->mFields:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;

    sget-object v3, Lcom/android/phone/common/mail/internet/MimeHeader;->WRITE_OMIT_FIELDS:[Ljava/lang/String;

    iget-object v4, v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/phone/common/mail/internet/MimeHeader;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/phone/common/mail/internet/MimeHeader$Field;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    return-void
.end method
