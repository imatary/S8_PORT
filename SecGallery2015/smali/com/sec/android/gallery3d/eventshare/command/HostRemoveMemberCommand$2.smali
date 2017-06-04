.class Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$2;
.super Ljava/lang/Object;
.source "HostRemoveMemberCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)I
    .locals 4

    iget-wide v0, p1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mExpire:J

    iget-wide v2, p2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;->mExpire:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    check-cast p2, Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/command/HostRemoveMemberCommand$2;->compare(Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;Lcom/sec/samsung/gallery/access/cmh/ChannelInfo$SharedContacts;)I

    move-result v0

    return v0
.end method
