.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;
.super Ljava/lang/Object;
.source "ProfilePushInfo.java"


# instance fields
.field protected appData:Ljava/lang/String;

.field protected pushType:I

.field protected sessionInfo:Ljava/lang/String;

.field protected timeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->pushType:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->sessionInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->appData:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfilePushInfo;->timeStamp:Ljava/lang/Long;

    return-void
.end method
