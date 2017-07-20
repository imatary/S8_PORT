.class Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RecordCallsAutomaticallyList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCallsItem"
.end annotation


# instance fields
.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->this$0:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->number:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/phone/RecordCallsAutomaticallyList;->-get0(Lcom/android/phone/RecordCallsAutomaticallyList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsAutomaticallyList$RecordCallsItem;->contact_name:Ljava/lang/String;

    return-void
.end method
