.class public Lcom/android/phone/photoring/PhotoringPhrase;
.super Ljava/lang/Object;
.source "PhotoringPhrase.java"


# instance fields
.field public id:J

.field public isChecked:Z

.field public message:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public thumb:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/phone/photoring/PhotoringPhrase;->id:J

    iput-object p3, p0, Lcom/android/phone/photoring/PhotoringPhrase;->message:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/photoring/PhotoringPhrase;->path:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/photoring/PhotoringPhrase;->thumb:Ljava/lang/String;

    iput p6, p0, Lcom/android/phone/photoring/PhotoringPhrase;->type:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/photoring/PhotoringPhrase;->isChecked:Z

    return-void
.end method
