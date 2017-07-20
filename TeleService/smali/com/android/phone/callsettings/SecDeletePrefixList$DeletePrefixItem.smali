.class Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;
.super Ljava/lang/Object;
.source "SecDeletePrefixList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecDeletePrefixList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeletePrefixItem"
.end annotation


# instance fields
.field public checked:I

.field public id:Ljava/lang/String;

.field public reject_num:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;->reject_num:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;->id:Ljava/lang/String;

    iput p3, p0, Lcom/android/phone/callsettings/SecDeletePrefixList$DeletePrefixItem;->checked:I

    return-void
.end method
