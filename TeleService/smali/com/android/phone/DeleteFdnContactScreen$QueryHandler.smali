.class Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DeleteFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DeleteFdnContactScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const-string/jumbo v3, "onDeleteComplete"

    invoke-static {v2, v3}, Lcom/android/phone/DeleteFdnContactScreen;->-wrap3(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string/jumbo v0, "0"

    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-static {v2, v4}, Lcom/android/phone/DeleteFdnContactScreen;->-wrap1(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    if-gez p3, :cond_0

    const/4 v1, 0x0

    const/16 v2, -0x3eb

    if-ne p3, v2, :cond_0

    const-string/jumbo v0, "-1003"

    :cond_0
    iget-object v2, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-static {v2, v1, v0}, Lcom/android/phone/DeleteFdnContactScreen;->-wrap2(Lcom/android/phone/DeleteFdnContactScreen;ZLjava/lang/String;)V

    return-void
.end method

.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const-string/jumbo v1, "onQueryComplete(), call the deleteContact()"

    invoke-static {v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->-wrap3(Lcom/android/phone/DeleteFdnContactScreen;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->-wrap1(Lcom/android/phone/DeleteFdnContactScreen;Z)V

    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->this$0:Lcom/android/phone/DeleteFdnContactScreen;

    invoke-static {v0}, Lcom/android/phone/DeleteFdnContactScreen;->-wrap0(Lcom/android/phone/DeleteFdnContactScreen;)V

    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0

    return-void
.end method
