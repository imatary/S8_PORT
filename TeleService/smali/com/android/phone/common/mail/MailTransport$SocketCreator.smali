.class interface abstract Lcom/android/phone/common/mail/MailTransport$SocketCreator;
.super Ljava/lang/Object;
.source "MailTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/MailTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SocketCreator"
.end annotation


# virtual methods
.method public abstract createSocket()Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/common/mail/MessagingException;
        }
    .end annotation
.end method
