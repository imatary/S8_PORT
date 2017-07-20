.class public Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;
.super Ljava/lang/Object;
.source "RegisterReplyMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/additionalservice/RegisterReplyMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "USSDItem"
.end annotation


# instance fields
.field protected code:Ljava/lang/String;

.field protected id:I

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;->id:I

    iput-object p2, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/additionalservice/RegisterReplyMsg$USSDItem;->code:Ljava/lang/String;

    return-void
.end method
