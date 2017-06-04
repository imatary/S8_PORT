.class Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$2;
.super Ljava/lang/Object;
.source "AlbumViewDCSelectItemTask.java"

# interfaces
.implements Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$ComparatorName;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;->checkNameAfterDeleteSpace(Ljava/lang/String;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask$2;->this$0:Lcom/samsung/android/devicecog/gallery/selectiontask/AlbumViewDCSelectItemTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->compareStoryName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
