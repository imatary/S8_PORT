.class Lcom/android/phone/common/mail/store/ImapStore$ImapException;
.super Lcom/android/phone/common/mail/MessagingException;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAlertText:Ljava/lang/String;

.field private final mResponseCode:Ljava/lang/String;

.field private final mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/common/mail/MessagingException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->mStatus:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->mResponseCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->mAlertText:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->mResponseCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/common/mail/store/ImapStore$ImapException;->mStatus:Ljava/lang/String;

    return-object v0
.end method
