.class public Lcom/android/phone/common/mail/AuthenticationFailedException;
.super Lcom/android/phone/common/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/android/phone/common/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
