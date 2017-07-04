.class Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$1;
.super Ljava/lang/Object;
.source "AboutPageActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshBadge(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity$1;->this$0:Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;->access$000(Lcom/sec/android/gallery3d/settings/aboutpage/AboutPageActivity;I)V

    return-void
.end method
