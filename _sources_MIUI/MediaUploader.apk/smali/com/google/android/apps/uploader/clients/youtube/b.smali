.class final Lcom/google/android/apps/uploader/clients/youtube/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/youtube/b;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/b;->a:Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;

    const v1, 0x7f06004e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
